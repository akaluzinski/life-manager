CREATE TABLE IF NOT EXISTS user_account (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS habit (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL REFERENCES user_account(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    archived BOOLEAN DEFAULT false
);

CREATE TABLE IF NOT EXISTS habit_log (
    id BIGSERIAL PRIMARY KEY,
    habit_id BIGINT NOT NULL REFERENCES habit(id) ON DELETE CASCADE,
    date DATE NOT NULL,
    done BOOLEAN NOT NULL
);

INSERT INTO user_account (username, email, password)
VALUES
  ('test', 'test@example.com', '$2a$10$DowU8vUzB/8Kf5b3lU8Q/uXbKl1b3ZfL9p7Mv8Yc7fQyQpoA9K8aG'),  -- password: test123
  ('real_user', 'you@example.com', '$2a$10$DowU8vUzB/8Kf5b3lU8Q/uXbKl1b3ZfL9p7Mv8Yc7fQyQpoA9K8aG');
