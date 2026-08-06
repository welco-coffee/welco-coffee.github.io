# WELCO — B2B 브랜드 사이트

주식회사 디올(브랜드 WELCO)의 원두 **위탁생산(OEM·화이트라벨)**과 **도매 납품**을 소개하는
1페이지 정적 사이트입니다. 빌드 도구·서버가 필요 없는 순수 HTML/CSS입니다.

```
welco-coffee.github.io/
├─ index.html          ← 사이트 본체 (전부 이 한 파일)
├─ assets/             ← 이미지 (원본은 ..\케냐AA)
│  ├─ hero-beans.jpg  logo.png  roaster.jpg  hmi.jpg  package.jpg  patent.jpg
├─ .nojekyll           ← GitHub Pages가 Jekyll 처리를 건너뛰게 함
├─ serve-local.cmd     ← 내 PC에서 미리보기
└─ README.md
```

> 파일명은 모두 영문으로 둡니다. GitHub Pages 빌드가 한글 파일명에서 실패한 적이 있습니다.

## 1. 내 PC에서 보기

`serve-local.cmd` 를 더블클릭하면 <http://localhost:8080> 이 열립니다. (Python 필요, 이미 설치되어 있음)

`index.html` 을 그냥 더블클릭해도 동일하게 보입니다. 서버 없이도 동작하도록 만들었습니다.

## 2. 인터넷 주소

현재 배포처: <https://leeseunghun815-create.github.io/welco/>
(저장소 `leeseunghun815-create/welco`, 브랜치 `main`, 루트)

수정한 뒤에는 이 폴더에서 `git add . && git commit -m "수정" && git push` 만 하면
1~2분 뒤 반영됩니다.

### `welco-coffee.github.io` 주소로 바꾸려면

`<이름>.github.io` 는 **그 이름의 계정 또는 조직**만 쓸 수 있습니다.
개인 계정 이름이 `leeseunghun815-create` 이므로, 조직을 만드는 쪽이 깔끔합니다.

1. <https://github.com/account/organizations/new?plan=free> 에서 **Free** 플랜으로
   조직 이름 `welco-coffee` 생성
2. 저장소를 조직으로 이전하고 이름을 바꿉니다.

```bash
gh api -X POST repos/leeseunghun815-create/welco/transfer -f new_owner=welco-coffee
gh repo rename welco-coffee.github.io --repo welco-coffee/welco
gh api -X POST repos/welco-coffee/welco-coffee.github.io/pages \
  -f "source[branch]=main" -f "source[path]=/"
git remote set-url origin https://github.com/welco-coffee/welco-coffee.github.io.git
```

그러면 <https://welco-coffee.github.io> 에서 열립니다.
나중에 자체 도메인(예: welco.co.kr)을 사면 저장소 Settings → Pages → Custom domain 에
넣고 DNS만 맞추면 됩니다.

## 3. 아직 비어 있는 항목 (사람이 채워야 함)

`index.html` 안에서 아래 키워드를 검색하면 해당 위치에 주석으로 표시해 두었습니다.

| 키워드 | 내용 |
|---|---|
| `MAIL_TODO` | 사업용 이메일 주소. 정해지면 문의 섹션·푸터에 추가 |
| `SHOP_TODO` | 쿠팡·스마트스토어 상품 링크. 확보되면 '개인 구매' 블록을 버튼으로 교체 |
| `#oem` 조건 표 | 최소 수량(MOQ)·납기·단가. 지금은 "협의"로 표기 — 확정되면 숫자로 교체 |

HACCP 인증 여부, 월 생산 캐파, 배치 사이클 타임은 확인되지 않아 **본문에 넣지 않았습니다.**
확인되면 위탁생산 섹션의 신뢰도가 크게 올라가는 항목이므로 우선 확보를 권합니다.

## 4. 표기 주의

- '검출한계 미만' 문구에는 시험기관·일자·시료 한정 단서를 항상 함께 둡니다(푸터·검증 섹션에 이미 포함).
- 질병 예방·치료 효과를 뜻하는 표현은 넣지 않습니다(식품표시광고법).
- 이미지 원본: `D:\_개인·부업\사업_원두·카페\케냐AA\로스팅 기계 관련 사진`.
  재가공 스크립트는 세션 스크래치패드의 `build_assets.py` 참고.
