-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  email_verifications
CREATE UNIQUE INDEX ux_ev_selector ON email_verifications (selector);

CREATE INDEX idx_ev_user ON email_verifications (user_id);

CREATE INDEX idx_ev_expires ON email_verifications (expires_at);
