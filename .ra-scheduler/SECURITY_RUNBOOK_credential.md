# 자격증명 무중단 정비 런북 (2026-09-10) — Rev.2

> 목적: 헌장 §0.4-7(자격증명 하드코딩 금지) 위반을 **스케줄러 중단 없이** 해소한다.
> 원칙: 어느 시점에도 유효 토큰이 없는 구간을 만들지 않는다. 구 토큰 폐기는 **신 토큰 실동작 확인 후**에만 한다.

---

## 0. 근거 (2026-09-10, Rev.2)

> 등급: `[F]` 명령 출력으로 관측 / `[D]` 문서 원문 근거 / `[I]` 판단.
> **등급은 문장 단위로 부여한다. 관측에서 끌어낸 결론은 `[I]`다.**
> **모든 검사에 반증 조건을 병기한다.** Rev.0은 문서 근거를 "실측"으로, Rev.1은 결론을 `[F]`로 표기한 오류가 있었다.

| 등급 | 항목 | 내용 | 반증 조건 |
|---|---|---|---|
| `[F]` | **저장소가 public** | `private: false` / `visibility: public`. 추적 파일 154건 전체 공개. 이메일 포함 파일 16건(`abyzr.com` 1157·`ktr.or.kr` 315·`actslab.co.kr` 280 외), 전화번호 패턴 5건. fork·star·watcher 각 0 | API가 `private: true` 반환 |
| `[F]` | 토큰 신원·권한 | 토큰 소유 = **`hnabyz-bot`**(저장소 소유자 `holee9`와 다름). 저장소 권한 `admin:False, push:True`. 공개범위 변경 PATCH → **HTTP 404**(권한부족 마스킹) | `permissions.admin`이 True |
| `[F]` | 자격증명 평문 (4대 전수) | `GITHUB_PAT` 2곳(`.env.scheduler` 의도 / `.git/config` 노출), 커밋 이력 0건 · **`LAW_GO_KR_OC` 추적 파일 2건**(`GMP_심사자료/README.md`·`KGMP_QMSR_ISO13485_비교_통합전략.md`) 커밋 12개, 원격 반영 · `OPENFDA_API_KEY`·`DATA_GO_KR_KEY_ENCODING` 0건 | 추가 위치 검출 |
| `[F]` | 토큰 스코프 | classic `ghp_`. `x-oauth-scopes` = `admin:org, admin:org_hook, admin:public_key, admin:repo_hook, admin:ssh_signing_key, audit_log, gist, repo, workflow, write:packages` | 헤더가 좁은 스코프 반환 |
| `[F]` | Bearer 경로 동작 | repo read 200 / issues read 200 / blob write 201 / `permissions.push` True | 4xx 반환 |
| `[F]` | 로컬 git 사용 흔적 | reflog 총 3건(2026-06-23 clone+commit 2건, 이후 0건) · 로컬 HEAD 2026-06-23 정지 vs 원격 2026-09-07 · 원격 회차 커밋 committer `hnabyz-bot` ≠ 로컬 `user.name=holee9` | reflog에 2026-06-23 이후 항목 |
| `[D]` | SOP상 인증 경로 | `RUN_SOP_maintenance.md` §4 = Bearer 헤더 / §4-A = urllib. **회차 SOP 문서(`RUN_SOP.md`·`RUN_SOP_maintenance.md`·STATE)에 `git` 명령 문자열 0건**(본 런북 자신의 예시 명령은 제외) | SOP에 git 명령 존재 |
| `[D]` | §4-A 구현 부재 | §4-A가 참조하는 "구 SOP의 동기 스크립트 로직"이 `RUN_SOP.md`에 없음(§4-A 절·'동기' 문자열 모두 0건) | RUN_SOP.md에 해당 절 존재 |
| `[I]` | **결론 — 추론이며 관측 아님** | 위 `[F]` 로컬 git 흔적 3항과 `[D]` 2항이 일치하므로 remote URL 토큰 제거가 회차 커밋 경로에 영향하지 않는다고 **판단**한다. **반증 시나리오가 성립한다**: SOP §0의 동적 경로(`glob('/sessions/*/mnt/RA project')`)대로 회차가 매번 별도 세션 클론에서 `clone→commit→push` 후 폐기되면 세 관측이 그대로 성립한다. 세 관측이 입증하는 것은 "**이 클론**이 회차에 쓰이지 않았다"뿐이다. → A-4b(회차 1회 완주 확인)로 폐쇄 |

> **폐기된 근거**: Rev.0~1이 "credential helper 검증 완료"의 근거로 삼은 `git ls-remote` 성공은 **무효**다. 저장소가 public이라 helper를 비활성화한 익명 상태에서도 동일하게 성공한다(재현 확인). 이 검사는 helper 동작을 전혀 배제하지 못한다. → A-4를 **push 기반 검사**로 교체.

---

## A-0. 저장소 private 전환 (최우선 · 지시자 직접 수행)

`[F]` 본 세션의 토큰은 저장소 `admin:False`라 공개범위를 변경할 수 없다. **저장소 소유자 `holee9` 계정**에서 수행한다.

1. `github.com/holee9/ra-project` → **Settings → General → Danger Zone → Change repository visibility → Make private**
2. 확인: 익명 접근이 404가 되고, `curl -H "Authorization: Bearer $GITHUB_PAT" .../repos/holee9/ra-project` 는 계속 200일 것.
3. 스케줄러 영향: 토큰은 collaborator(`push:True`)이므로 private 전환 후에도 커밋·이슈 API 동작. `[I]` 단, 다음 회차 1회 완주로 확인한다.

> private 전환 후에는 `git ls-remote`가 인증을 요구하므로 **A-4의 helper 검사가 비로소 유효해진다**.

## A. 노출 제거 (무중단·즉시·가역)

remote URL에서 토큰만 걷어내고, 대화형 git 인증은 `.env.scheduler`를 단일 출처로 삼는 credential helper로 대체한다.

```bash
cd "<RA project>"

# A-1. 현재 URL 백업 (되돌리기용, 로컬 임시 — 저장소 밖)
git config --get remote.origin.url > /tmp/ra_origin_url.bak

# A-2. URL에서 자격증명 제거
git remote set-url origin https://github.com/holee9/ra-project.git

# A-3. credential helper 등록 (.env.scheduler를 단일 출처로)
git config --local credential.helper \
  '!f() { echo username=holee9; echo "password=$(grep "^GITHUB_PAT=" "$GIT_DIR/../.ra-scheduler/.env.scheduler" | cut -d= -f2- | tr -d "\"")"; }; f'

# A-4. 검증 — 셋 다 성공해야 완료
git config --get remote.origin.url | grep -q '@' && echo "FAIL: URL에 자격증명 잔존" || echo "OK: URL 청결"
# helper 실동작 검사 — 반드시 **인증이 필요한 조작**으로 시험한다.
# (ls-remote 는 public 저장소에서 익명 성공하므로 helper 검증에 쓸 수 없다)
GIT_TERMINAL_PROMPT=0 git push --dry-run origin HEAD:refs/heads/_cred_probe >/dev/null 2>&1 \
  && echo "OK: helper 인증 정상(push 경로)" || echo "FAIL: 인증 불가 → A-5 롤백"
PAT=$(grep '^GITHUB_PAT=' .ra-scheduler/.env.scheduler | cut -d= -f2- | tr -d '"')
curl -s -o /dev/null -w "스케줄러 경로: HTTP %{http_code}\n" -H "Authorization: Bearer $PAT" https://api.github.com/repos/holee9/ra-project

# A-4b. 잔여 위험 폐쇄 — 다음 주간 회차(월 07:00) 1회가 커밋까지 정상 완료되는지 확인.
#        미완료 시 A-5로 롤백. 확인 전까지 A는 "잠정 적용" 상태로 둔다.

# A-5. 롤백 (필요 시)
# git remote set-url origin "$(cat /tmp/ra_origin_url.bak)" && git config --local --unset credential.helper
```

**영향 범위**: `.git/config` 로컬 파일만. 원격·스케줄러·회차 산출물 무관. 실패 시 A-5로 즉시 원복.

---

## B. 권한 축소 (선택·무중단·구 토큰 유지)

A와 독립. 계정 전역 권한을 레포 단위로 낮춘다. **구 토큰은 B-5까지 살려 둔다.**

1. **신 토큰 발급** — GitHub → Settings → Developer settings → Personal access tokens → **Fine-grained tokens**
   - Repository access: **Only select repositories → `holee9/ra-project`**
   - Permissions: `Contents` **Read and write** / `Issues` **Read and write** / `Metadata` Read (자동)
   - 그 외 전부 No access. 만료일 지정 권장.
2. **병행 등록** — `.env.scheduler`에 기존 `GITHUB_PAT` 은 그대로 두고 한 줄 추가:
   ```
   GITHUB_PAT_NEW="github_pat_..."
   ```
3. **신 토큰 실동작 검증** — 4종 전부 통과해야 진행:
   ```bash
   N=$(grep '^GITHUB_PAT_NEW=' .ra-scheduler/.env.scheduler | cut -d= -f2- | tr -d '"')
   curl -s -o /dev/null -w "repo read %{http_code}\n"   -H "Authorization: Bearer $N" https://api.github.com/repos/holee9/ra-project
   curl -s -o /dev/null -w "issues read %{http_code}\n" -H "Authorization: Bearer $N" "https://api.github.com/repos/holee9/ra-project/issues?state=open&per_page=1"
   curl -s -H "Authorization: Bearer $N" https://api.github.com/repos/holee9/ra-project | python3 -c "import sys,json;print('push:',json.load(sys.stdin)['permissions']['push'])"
   # blob 생성(무해 — tree/commit 미생성이면 저장소에 반영되지 않음)
   curl -s -o /dev/null -w "blob write %{http_code}\n" -X POST -H "Authorization: Bearer $N" \
     -d '{"content":"probe","encoding":"utf-8"}' https://api.github.com/repos/holee9/ra-project/git/blobs
   ```
   기대: `200 / 200 / push: True / 201`
4. **승격** — `.env.scheduler`에서 `GITHUB_PAT` 값을 신 토큰으로 교체, 구 값은 `GITHUB_PAT_OLD=` 로 보존.
5. **실회차 완주 확인** — **다음 주간 회차(월 07:00) 1회가 커밋·이슈까지 정상 완료**되는 것을 확인.
6. **구 토큰 폐기** — 5 통과 후에만 GitHub에서 classic 토큰 revoke, `.env.scheduler`의 `GITHUB_PAT_OLD` 행 삭제.

> **B-5 이전에 구 토큰을 폐기하지 말 것.** 폐기 후 문제가 생기면 복구 수단이 없다.
> 롤백: `GITHUB_PAT` 값을 `GITHUB_PAT_OLD` 값으로 되돌리면 즉시 원상 복귀(구 토큰 미폐기 상태이므로 유효).

---

## C. 재발 방지

- SOP `RUN_SOP_maintenance.md` §0에 추가: **remote URL·스크립트·프롬프트에 자격증명 기재 금지, 단일 출처는 `.env.scheduler`.**
- 주간 회차 마감 점검에 1줄 추가:
  ```bash
  git config --get remote.origin.url | grep -q '@' && echo "WARN: remote URL에 자격증명 유입"
  ```
