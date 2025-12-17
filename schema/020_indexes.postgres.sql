-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  email_verifications

CREATE UNIQUE INDEX IF NOT EXISTS ux_ev_selector ON email_verifications (selector);

CREATE INDEX IF NOT EXISTS idx_ev_user ON email_verifications (user_id);

CREATE INDEX IF NOT EXISTS idx_ev_expires ON email_verifications (expires_at);
