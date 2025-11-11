# Supabase 설정 가이드

## 1. Supabase 프로젝트 생성
1. https://supabase.com 에서 계정 생성
2. 새 프로젝트 생성
3. 프로젝트 URL과 anon key 복사

## 2. 데이터베이스 테이블 생성
다음 단계를 따라 테이블을 생성하세요:

1. Supabase 대시보드에서 "SQL Editor" 클릭
2. `database.sql` 파일의 내용을 복사하여 붙여넣기
3. "Run" 버튼 클릭하여 실행

⚠️ **주의**: 마크다운 주석(#)이나 설명 텍스트는 복사하지 마세요. 순수 SQL 코드만 실행하세요.

## 3. 환경 변수 설정
`public/index.html` 파일에서 다음 값들을 실제 값으로 변경하세요:

```javascript
const SUPABASE_URL = 'YOUR_SUPABASE_URL'; // 실제 Supabase URL
const SUPABASE_ANON_KEY = 'YOUR_SUPABASE_ANON_KEY'; // 실제 anon key
```

## 4. 테이블 구조 설명
- `id`: 돌의 고유 ID (자동 증가)
- `user_id`: 사용자 식별자 (브라우저 세션 기반)
- `text`: 돌에 적힌 소원 텍스트
- `shape`: 돌 모양 (sphere, ellipsoid, box)
- `size`: 돌 크기 (small, medium, large)
- `created_at`: 생성 시간

## 5. 기능
- 사용자별 돌탑 저장/불러오기
- 전체 돌 개수 통계
- 오늘 생성된 돌 개수 통계
- 실시간 데이터 동기화