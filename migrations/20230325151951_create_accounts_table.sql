CREATE TABLE IF NOT EXISTS accounts
(
	id BIGSERIAL NOT NULL PRIMARY KEY,
    user_id uuid REFERENCES users (id) ON DELETE CASCADE,
	name TEXT NOT NULL,
	visible BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);