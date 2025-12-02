-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  email_verifications

ALTER TABLE email_verifications ADD CONSTRAINT fk_ev_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
