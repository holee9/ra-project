#!/usr/bin/env bash
# RA project 운영점검 보고서 재현 검증 스크립트 (2026-09-10)
# 목적: 보고서의 모든 [F] 항목을 라이브 소스에서 재생성한다.
# 주의: 본 스크립트와 보고서 자신도 미추적 파일로 계수된다(감사 산출물 2건).
# 사용: bash verify_audit.sh   (RA project 폴더 마운트 상태에서 실행)
set -u
BASE="${1:-$HOME/mnt/RA project}"
cd "$BASE" || { echo "FATAL: BASE 없음: $BASE"; exit 1; }
PAT=$(grep '^GITHUB_PAT=' .ra-scheduler/.env.scheduler | cut -d= -f2- | tr -d '"')
echo "=== RA 점검 재현 검증 / $(date -u +%Y-%m-%dT%H:%MZ) / BASE=$BASE"
echo
echo "--- F1. 로컬-원격 동기 상태 (보고서 F1)"
git fetch -q origin 2>/dev/null
echo -n "ahead/behind(HEAD...origin/main): "; git rev-list --left-right --count HEAD...origin/main
echo
echo "--- F2. 미커밋 로컬 변경 (보고서 F2: 수정 9 + 미추적 3, 감사산출물 2 포함)"
git status --porcelain | wc -l
git status --porcelain
echo
echo "--- F3. 주간 스케줄러 최근 가동 (보고서 F3)"
git log origin/main --oneline --grep='maint(weekly' -3
echo -n "STATE last_weekly_run: "; grep -m1 '^last_weekly_run:' .ra-scheduler/STATE_maintenance.md | cut -c1-60
echo
echo "--- F4. 분기 회차 산출물 (보고서 F4)"
echo -n "원격 quarterly 커밋 최신: "; git log origin/main --oneline --grep='quarterly' -1
echo -n "STATE last_quarterly_run: "; grep -m1 '^last_quarterly_run:' .ra-scheduler/STATE_maintenance.md | cut -c1-60
echo
echo "--- F5. GitHub open 이슈 (보고서 F5)"
curl -s -H "Authorization: Bearer $PAT" \
 "https://api.github.com/repos/holee9/ra-project/issues?state=open&per_page=100" \
 | python3 -c "
import sys,json
d=json.load(sys.stdin)
fq=[i for i in d if any(l['name']=='for-quarterly' for l in i['labels'])]
hi=[i for i in d if any(l['name'] in ('high','high-impact') for l in i['labels'])]
print('open 총건:',len(d)); print('for-quarterly:',len(fq),[i['number'] for i in fq])
h=[i['number'] for i in d if any(l['name']=='high' for l in i['labels'])]
hx=[i['number'] for i in d if any(l['name']=='high-impact' for l in i['labels'])]
print('high:',len(h),h,' high-impact:',len(hx),hx)
"
echo
echo "--- F6. 자격증명 평문 노출 (보고서 F6)"
git remote -v | sed 's#//[^@]*@#//<CREDENTIAL-PRESENT>@#' | head -1
echo -n ".env.scheduler 커밋 제외 여부: "; git check-ignore -q .ra-scheduler/.env.scheduler && echo "ignored(OK)" || echo "NOT-IGNORED(위험)"
echo
echo "--- F7. KPI 미측정 (보고서 F7)"
grep -E '^kpi_' .ra-scheduler/STATE_maintenance.md | cut -c1-90
echo
echo "--- F9. 분기 cron 발화 이력 (보고서 F9: cron일 발화 0회)"
echo "분기 cron = 0 3 1 1,4,7,10 * -> 1/4/7/10월 1일만 발화"
git log origin/main --format='%ad %s' --date=short --grep='quarterly' | cut -c1-70
echo
echo "--- F10. 문서 무결성 (보고서 F10: 전 154 추적파일 대조, 상이 4건)"
git -c core.quotepath=false ls-tree -r --name-only origin/main | while IFS= read -r q; do
  [ -f "$q" ] || { echo "  로컬없음 | $q"; continue; }
  a=$(sha256sum < "$q" | cut -c1-12); b=$(git show "origin/main:$q" 2>/dev/null | sha256sum | cut -c1-12)
  [ "$a" = "$b" ] || echo "  상이 | 로컬 $(wc -c < "$q")B vs 원격 $(git show "origin/main:$q" | wc -c)B | $q"
done
echo "  대조 총건: $(git ls-tree -r --name-only origin/main | wc -l)"
echo
echo "--- F8. 저장소 규모"
echo -n "총 문서(.md): "; git ls-files '*.md' | wc -l
echo
echo "=== 끝. 위 출력과 보고서 Fact 항목이 불일치하면 해당 항목은 반려."
