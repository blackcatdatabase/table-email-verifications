<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – email_verifications

Email verification tokens for users.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| user_id | BIGINT | NO | — | Related user (FK users.id). |  |
| token_hash | CHAR(64) | YES | — | Full token hash (hex/char). | PII: token |
| selector | CHAR(12) | NO | — | Short public selector (unique). |  |
| validator_hash | BYTEA | YES | — | Hashed validator part. | PII: hashed |
| key_version | VARCHAR(64) | YES | — | Key version used for hashing/encryption. |  |
| expires_at | TIMESTAMPTZ(6) | NO | — | Expiration timestamp (UTC). |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| used_at | TIMESTAMPTZ(6) | YES | — | When token was used, if so. |  |