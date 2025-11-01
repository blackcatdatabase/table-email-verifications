-- Auto-generated from schema-views-postgres.psd1 (map@c5e4097)
-- engine: postgres
-- table:  email_verifications
-- Contract view for [email_verifications]
-- Hides token_hash and validator_hash; exposes selector and timestamps.
CREATE OR REPLACE VIEW vw_email_verifications AS
SELECT
  id,
  user_id,
  selector,
  key_version,
  expires_at,
  created_at,
  used_at,
  encode(validator_hash, 'hex') AS validator_hash_hex
FROM email_verifications;
