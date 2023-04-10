CREATE TABLE IF NOT EXISTS tags
(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id uuid REFERENCES users (id) ON DELETE CASCADE,
	name TEXT NOT NULL UNIQUE
);
