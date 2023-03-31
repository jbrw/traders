CREATE TABLE IF NOT EXISTS trades
(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    account_id BIGSERIAL REFERENCES accounts (id) ON DELETE CASCADE,
	instrument TEXT NOT NULL,
	entry_time DOUBLE PRECISION NOT NULL,
	exit_time DOUBLE PRECISION NOT NULL,
	commission REAL,
	pnl REAL,
	short BOOLEAN,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);