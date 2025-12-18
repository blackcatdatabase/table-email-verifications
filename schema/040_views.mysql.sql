-- Auto-generated from schema-views-mysql.yaml (map@sha1:B3C579FF17AC186C47D2C4AC86B0738DB2308BF2)
-- engine: mysql
-- table:  email_verifications

-- Contract view for [email_verifications]
-- Exposes validator_hash for verification; token_hash remains hidden.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_email_verifications AS
SELECT
  id,
  user_id,
  selector,
  validator_hash,
  key_version,
  expires_at,
  created_at,
  used_at,
  CAST(LPAD(HEX(validator_hash), 64, '0') AS CHAR(64)) AS validator_hash_hex
FROM email_verifications;
