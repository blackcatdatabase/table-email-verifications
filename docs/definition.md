<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – email_verifications

Email verification tokens for users.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| user_id | BIGINT UNSIGNED | NO | — | Related user (FK users.id). |  |
| token_hash | CHAR(64) | YES | — | Full token hash (hex/char). | PII: token |
| selector | CHAR(12) | NO | — | Short public selector (unique). |  |
| validator_hash | BINARY(32) | YES | — | Hashed validator part. | PII: hashed |
| key_version | VARCHAR(64) | YES | — | Key version used for hashing/encryption. |  |
| expires_at | DATETIME(6) | NO | — | Expiration timestamp (UTC). |  |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| used_at | DATETIME(6) | YES | — | When token was used, if so. |  |
