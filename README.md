# WELCO — 브랜드 사이트

주식회사 디올(브랜드 WELCO)의 사이트입니다. 독자가 달라 두 페이지로 나뉩니다.

- `index.html` — **B2B**. 개인 카페 원두 납품(샘플 신청)과 로스팅 임가공.
- `shop.html` — **B2C**. 원두 3종(에티오피아 · 케냐 AA · 콜롬비아). 구매는 쿠팡으로 보내고, 케냐 AA만 스마트스토어를 보조로 둡니다. 가격 · 재고는 적지 않습니다.

2026-11-15 v3 개편: 디자인 시스템 "N₂ SHEET"(WELCO 색 · Gowun Batang · Noto Sans KR), 상품 이미지는 `assets/img/`.

빌드 도구·서버가 필요 없는 순수 HTML/CSS입니다.

```
welco-coffee.github.io/
├─ index.html          ← B2B (임가공·도매)
├─ shop.html           ← B2C (원두 소개)
├─ assets/             ← 이미지 (원본은 ..\케냐AA)
│  ├─ spec.css         ← 디자인 시스템. 두 페이지가 공유하므로 여기만 고치면 둘 다 바뀐다
│  ├─ hero-beans.jpg  logo.png  roaster.jpg  hmi.jpg  package.png  patent.jpg  beans.jpg
│  └─ package-og.jpg   ← SNS 공유 미리보기 전용(투명 배경을 못 쓰는 곳이 있어 따로 둔다)
├─ .nojekyll           ← GitHub Pages가 Jekyll 처리를 건너뛰게 함
├─ serve-local.cmd     ← 내 PC에서 미리보기
└─ README.md
```

> 파일명은 모두 영문으로 둡니다. GitHub Pages 빌드가 한글 파일명에서 실패한 적이 있습니다.

## 1. 내 PC에서 보기

`serve-local.cmd` 를 더블클릭하면 <http://localhost:8080> 이 열립니다. (Python 필요, 이미 설치되어 있음)

`index.html` 을 그냥 더블클릭해도 동일하게 보입니다. 서버 없이도 동작하도록 만들었습니다.

## 2. 인터넷 주소

**<https://welco-coffee.github.io>** (2026-08-06 공개)

저장소 `welco-coffee/welco-coffee.github.io` · 브랜치 `main` · 루트 · 공개(public).
`welco-coffee` 는 GitHub **조직(Organization)** 이고, 개인 계정
`leeseunghun815-create` 가 소유자입니다.

수정한 뒤에는 이 폴더에서 아래만 하면 1~2분 뒤 반영됩니다.

```bash
git add . && git commit -m "수정" && git push
```

나중에 자체 도메인(예: welco.co.kr)을 사면 저장소 Settings → Pages → Custom domain 에
넣고 DNS만 맞추면 그 주소로 바뀝니다.

### 빌드가 실패할 때 확인할 것

- **한글 파일명을 넣지 말 것.** `로컬실행.cmd` 때문에 빌드가 깨진 적이 있습니다.
- 저장소 이름은 반드시 `welco-coffee.github.io` — 소유자 이름과 다르면 빌드가 거부됩니다.

## 3. 아직 비어 있는 항목 (사람이 채워야 함)

각 파일 맨 위 주석의 `⚑ 남은 항목` 에도 같은 내용을 적어 두었습니다.

| 항목 | 내용 |
|---|---|
| 쿠팡 링크 | 아직 없습니다. 네이버 스마트스토어는 2026-08-10 연결 완료 |
| 가격 | 두 페이지 모두 금액을 적지 않고 스토어에 맡겼습니다. 가격이 바뀌어도 사이트를 고칠 일이 없습니다 |
| 대용량 SKU | 500g·1kg. 지금은 200g뿐이라 `shop.html` 제품 사양에 "문의"로만 적어 두었습니다 |
| `#oem` 조건 표 | 최소 수량(MOQ)·납기·단가. 지금은 "협의"로 표기 — 확정되면 숫자로 교체 |

HACCP 인증 여부, 월 생산 캐파, 배치 사이클 타임은 확인되지 않아 **본문에 넣지 않았습니다.**
확인되면 위탁생산 섹션의 신뢰도가 크게 올라가는 항목이므로 우선 확보를 권합니다.

## 4. 표기 주의

- '검출한계 미만' 문구에는 시험기관·일자·시료 한정 단서를 항상 함께 둡니다(푸터·검증 섹션에 이미 포함).
- 질병 예방·치료 효과를 뜻하는 표현은 넣지 않습니다(식품표시광고법).
- 이미지 원본: `D:\_개인·부업\사업_원두·카페\케냐AA\로스팅 기계 관련 사진`.
  재가공 스크립트는 세션 스크래치패드의 `build_assets.py` 참고.
