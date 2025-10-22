-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: email_verifications
ALTER TABLE email_verifications ADD CONSTRAINT fk_ev_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
