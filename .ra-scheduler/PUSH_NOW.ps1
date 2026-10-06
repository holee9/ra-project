<#
  RA KB — 미푸시 커밋 원격 반영 스크립트
  생성: 2026-10-06 (주간 #21 후속)

  왜 필요한가:
    Cowork 클라우드 세션과 Cowork 리눅스 VM 양쪽 모두 GitHub 쓰기가 막혀 있다.
    (클라우드: git 프록시가 레포 미인증으로 push 403 / VM: Plan9 마운트 실패로 셸 자체 불가)
    이 PC의 Windows git 은 정상이므로, 여기서 한 번만 실행하면 해소된다.

  무엇을 하는가:
    .ra-scheduler/ra-project-full.bundle 의 커밋을 '임시 폴더'에서 origin/main 으로 push.
    → 이 폴더의 작업트리와 .git 은 건드리지 않는다. (데이터 손실 위험 0)

  실행 방법 (PowerShell):
    cd "C:\Users\drake.lee\Documents\Claude\Projects\RA project\.ra-scheduler"
    powershell -ExecutionPolicy Bypass -File .\PUSH_NOW.ps1
#>

$ErrorActionPreference = 'Stop'
$OutputEncoding = [Console]::OutputEncoding = [Text.Encoding]::UTF8

$SchedDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $SchedDir
$Bundle   = Join-Path $SchedDir 'ra-project-full.bundle'
$EnvFile  = Join-Path $SchedDir '.env.scheduler'
$Expected = 'f4c7f64d2f42e5a25a756e093551e8675d8d9cc6'

function Step($n, $m) { Write-Host "`n[$n] $m" -ForegroundColor Cyan }
function Ok($m)       { Write-Host "    OK  $m" -ForegroundColor Green }
function Die($m)      { Write-Host "    실패  $m" -ForegroundColor Red; exit 1 }

Step 1 '사전 점검'
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { Die 'git 을 찾을 수 없습니다. Git for Windows 를 설치하세요.' }
if (-not (Test-Path $Bundle))  { Die "번들이 없습니다: $Bundle" }
if (-not (Test-Path $EnvFile)) { Die "자격증명 파일이 없습니다: $EnvFile" }
Ok ("git " + (git --version).Split(' ')[2])
Ok ("번들 " + [math]::Round((Get-Item $Bundle).Length/1MB,2) + " MB")

Step 2 '자격증명 로드 (.env.scheduler 단일 출처)'
$Pat = $null
foreach ($line in Get-Content $EnvFile -Encoding UTF8) {
    if ($line -match '^\s*GITHUB_PAT\s*=\s*(.+?)\s*$') { $Pat = $Matches[1].Trim('"').Trim("'") }
}
if ([string]::IsNullOrWhiteSpace($Pat)) { Die 'GITHUB_PAT 를 읽지 못했습니다.' }
Ok "GITHUB_PAT 로드 (길이 $($Pat.Length), 값은 출력하지 않습니다)"

Step 3 '번들 검증'
$v = git bundle verify $Bundle 2>&1
if ($LASTEXITCODE -ne 0) { Write-Host $v; Die '번들 검증 실패 — 손상되었습니다.' }
Ok '번들 무결성 통과'

Step 4 '임시 작업공간 준비 (이 폴더는 건드리지 않음)'
$Tmp = Join-Path $env:TEMP ("ra-push-" + (Get-Date -Format 'yyyyMMdd-HHmmss'))
git clone --quiet --bare $Bundle $Tmp 2>&1 | Out-Null
if ($LASTEXITCODE -ne 0) { Die '번들 클론 실패' }
$head = (git --git-dir=$Tmp rev-parse main).Trim()
if ($head -ne $Expected) { Write-Host "    번들 HEAD: $head`n    기대값   : $Expected"; Die '번들 HEAD 불일치 — 번들이 교체되었을 수 있습니다.' }
Ok "번들 HEAD $($head.Substring(0,7)) 확인"

Step 5 '원격 현재 상태 확인'
$remoteUrl = "https://x-access-token:$Pat@github.com/holee9/ra-project.git"
$before = (git --git-dir=$Tmp ls-remote $remoteUrl refs/heads/main 2>&1)
if ($LASTEXITCODE -ne 0) { Write-Host ($before -replace [regex]::Escape($Pat),'<MASKED>'); Die '원격 조회 실패 — 네트워크 또는 PAT 권한을 확인하세요.' }
$beforeSha = ($before -split "`t")[0]
Ok "origin/main (현재) $($beforeSha.Substring(0,7))"
if ($beforeSha -eq $Expected) { Ok '이미 반영되어 있습니다. 더 할 일이 없습니다.'; Remove-Item -Recurse -Force $Tmp; exit 0 }

Step 6 'PUSH — fast-forward'
$p = git --git-dir=$Tmp push $remoteUrl main:main 2>&1
Write-Host (($p | Out-String) -replace [regex]::Escape($Pat),'<MASKED>')
if ($LASTEXITCODE -ne 0) { Die 'push 실패 — 위 메시지를 그대로 Claude 에게 전달하세요.' }
Ok 'push 완료'

Step 7 '검증'
$after = (git --git-dir=$Tmp ls-remote $remoteUrl refs/heads/main 2>&1)
$afterSha = ($after -split "`t")[0]
if ($afterSha -ne $Expected) { Die "원격이 기대값과 다릅니다: $afterSha" }
Ok "origin/main (반영 후) $($afterSha.Substring(0,7))"

Remove-Item -Recurse -Force $Tmp
Write-Host "`n반영된 커밋 3건:" -ForegroundColor Yellow
Write-Host "  f4c7f64  maint(weekly#21): 2026-10-05 주간 모니터 — 신규 규제변경 없음"
Write-Host "  f0484ac  maint(backlog): 미푸시 로컬 회차 반영 (#19 주간 / 분기#3 / #20 주간)"
Write-Host "  bc3fd47  maint(weekly#17): 결측 회차 보전 (09-08~09-18)"
Write-Host "`n완료. 다음으로 OPEN_ISSUES.ps1 을 실행하면 이월 이슈 5건이 등록됩니다." -ForegroundColor Yellow
Write-Host "이 폴더의 .git 은 여전히 낡은 상태입니다(푸시에는 무관). 정리하려면:" -ForegroundColor DarkGray
Write-Host "  git -C `"$RepoRoot`" fetch origin; git -C `"$RepoRoot`" reset --hard origin/main" -ForegroundColor DarkGray
Write-Host "  (reset 은 작업트리를 원격 기준으로 되돌립니다 — 위 push 가 끝난 뒤에만 하세요)" -ForegroundColor DarkGray
