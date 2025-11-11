# Vercel & Supabase 배포 가이드

## 🚀 1단계: Supabase 설정

### 1.1 Supabase 프로젝트 생성
1. https://supabase.com 접속
2. "New Project" 클릭
3. 프로젝트 이름과 비밀번호 설정
4. 리전 선택 (Asia-Northeast-1 추천)

### 1.2 데이터베이스 테이블 생성
1. Supabase 대시보드에서 "SQL Editor" 클릭
2. `database.sql` 파일의 내용을 복사하여 붙여넣기 (마크다운이 아닌 순수 SQL만)
3. "Run" 버튼 클릭하여 테이블 생성

### 1.3 API 키 확인
1. Settings > API 이동
2. "URL"과 "anon public" 키 복사

## 🔧 2단계: 코드 설정

### 2.1 Supabase 연결 정보 입력
`public/index.html` 파일을 열어 다음 부분을 수정:

```javascript
// 20행 근처에서 다음 값들을 실제 값으로 변경
const SUPABASE_URL = 'https://your-project.supabase.co';
const SUPABASE_ANON_KEY = 'your-anon-key-here';
```

## 🌐 3단계: Vercel 배포

### 3.1 GitHub 저장소 생성
1. GitHub에서 새 저장소 생성
2. 프로젝트 파일들을 저장소에 업로드

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/username/repository-name.git
git push -u origin main
```

### 3.2 Vercel 배포
1. https://vercel.com 접속 및 GitHub 연동
2. "New Project" 클릭
3. GitHub 저장소 선택
4. 프로젝트 설정:
   - Framework Preset: Other
   - Root Directory: ./
   - Build Command: (비워둠)
   - Output Directory: public
5. "Deploy" 클릭

## ✅ 4단계: 테스트

### 4.1 기능 확인
1. 배포된 사이트 접속
2. '+' 버튼으로 돌 추가 테스트
3. 새로고침 후 돌탑 복원 확인
4. 통계 정보 표시 확인

### 4.2 문제 해결
- 돌이 저장되지 않는 경우: Supabase URL/키 확인
- 3D가 표시되지 않는 경우: 브라우저 WebGL 지원 확인
- 모바일에서 느린 경우: Vercel 지역 확인

## 🎯 5단계: 커스터마이징

### 5.1 색상 테마 변경
CSS의 그라데이션 색상을 수정하여 테마 변경 가능

### 5.2 돌 종류 추가
JavaScript에서 새로운 돌 모양이나 크기 추가 가능

### 5.3 통계 기능 확장
Supabase 쿼리를 수정하여 더 다양한 통계 표시 가능

## 📊 모니터링

### Vercel 분석
- Vercel 대시보드에서 방문자 수, 성능 지표 확인

### Supabase 분석  
- Supabase 대시보드에서 데이터베이스 사용량, API 호출 수 확인

---

🎉 **배포 완료!** 이제 전 세계 누구나 여러분의 3D 행운 돌탑을 이용할 수 있습니다.