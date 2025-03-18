DO $$ 
BEGIN 
   IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'my_database') THEN
      CREATE DATABASE my_database;
   END IF;
END $$;

\c my_database;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES
('Nguyễn Văn A', 'nguyenvana@example.com'),
('Trần Thị B', 'tranthib@example.com')
ON CONFLICT (email) DO NOTHING;

