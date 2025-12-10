# email_verifications

Email verification tokens for users.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| expires_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO |  | Expiration timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| key_version | VARCHAR(64) | YES |  | Key version used for hashing/encryption. |
| selector | CHAR(12) | NO |  | Short public selector (unique). |
| token_hash | CHAR(64) | YES |  | Full token hash (hex/char). |
| used_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | When token was used, if so. |
| user_id | BIGINT | NO |  | Related user (FK users.id). |
| validator_hash | mysql: BINARY(32) / postgres: BYTEA | YES |  | Hashed validator part. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_ev_selector | selector |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_ev_expires | expires_at | INDEX idx_ev_expires (expires_at) |
| idx_ev_user | user_id | INDEX idx_ev_user (user_id) |
| ux_ev_selector | selector | UNIQUE KEY ux_ev_selector (selector) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_ev_user | user_id | users(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_ev_selector | selector |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_ev_expires | expires_at | CREATE INDEX IF NOT EXISTS idx_ev_expires ON email_verifications (expires_at) |
| idx_ev_user | user_id | CREATE INDEX IF NOT EXISTS idx_ev_user ON email_verifications (user_id) |
| ux_ev_selector | selector | CREATE UNIQUE INDEX IF NOT EXISTS ux_ev_selector ON email_verifications (selector) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_ev_user | user_id | users(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_email_verifications | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_email_verifications | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
