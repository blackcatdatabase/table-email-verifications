-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  email_verifications

CREATE UNIQUE INDEX IF NOT EXISTS ux_ev_selector ON email_verifications (selector);

CREATE INDEX IF NOT EXISTS idx_ev_user ON email_verifications (user_id);

CREATE INDEX IF NOT EXISTS idx_ev_expires ON email_verifications (expires_at);
