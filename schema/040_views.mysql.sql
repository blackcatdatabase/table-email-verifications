-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  email_verifications

-- Contract view for [email_verifications]
-- Hides token_hash and validator_hash; exposes selector and timestamps.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_email_verifications AS
SELECT
  id,
  user_id,
  selector,
  key_version,
  expires_at,
  created_at,
  used_at,
  CAST(LPAD(HEX(validator_hash), 64, '0') AS CHAR(64)) AS validator_hash_hex
FROM email_verifications;
