-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  email_verifications

CREATE UNIQUE INDEX IF NOT EXISTS ux_ev_selector ON email_verifications (selector);

CREATE INDEX IF NOT EXISTS idx_ev_user ON email_verifications (user_id);

CREATE INDEX IF NOT EXISTS idx_ev_expires ON email_verifications (expires_at);
