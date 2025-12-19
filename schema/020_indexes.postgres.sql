-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  email_verifications

CREATE UNIQUE INDEX IF NOT EXISTS ux_ev_selector ON email_verifications (selector);

CREATE INDEX IF NOT EXISTS idx_ev_user ON email_verifications (user_id);

CREATE INDEX IF NOT EXISTS idx_ev_expires ON email_verifications (expires_at);
