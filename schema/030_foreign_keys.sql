-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: email_verifications
ALTER TABLE email_verifications ADD CONSTRAINT fk_ev_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;
