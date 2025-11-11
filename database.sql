-- stones 테이블 생성
CREATE TABLE stones (
    id BIGSERIAL PRIMARY KEY,
    user_id TEXT NOT NULL,
    text TEXT,
    shape TEXT NOT NULL CHECK (shape IN ('sphere', 'ellipsoid', 'box')),
    size TEXT NOT NULL CHECK (size IN ('small', 'medium', 'large')),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 인덱스 생성 (성능 향상)
CREATE INDEX idx_stones_user_id ON stones(user_id);
CREATE INDEX idx_stones_created_at ON stones(created_at);

-- RLS (Row Level Security) 활성화
ALTER TABLE stones ENABLE ROW LEVEL SECURITY;

-- 모든 사용자가 자신의 데이터를 읽고 쓸 수 있도록 정책 생성
CREATE POLICY "Users can view all stones" ON stones
    FOR SELECT USING (true);

CREATE POLICY "Users can insert their own stones" ON stones
    FOR INSERT WITH CHECK (true);