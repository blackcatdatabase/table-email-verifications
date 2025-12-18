-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
-- engine: postgres
-- table:  email_verifications

-- Contract view for [email_verifications]
-- Exposes validator_hash for verification; token_hash remains hidden.
CREATE OR REPLACE VIEW vw_email_verifications AS
SELECT
  id,
  user_id,
  selector,
  validator_hash,
  key_version,
  expires_at,
  created_at,
  used_at,
  UPPER(encode(validator_hash,'hex')) AS validator_hash_hex
FROM email_verifications;
