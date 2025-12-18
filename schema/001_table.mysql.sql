-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  email_verifications

CREATE TABLE IF NOT EXISTS email_verifications (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  token_hash CHAR(64) NULL,
  selector CHAR(12) NOT NULL,
  validator_hash BINARY(32) NULL,
  key_version VARCHAR(64) NULL,
  expires_at DATETIME(6) NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  used_at DATETIME(6) NULL,
  UNIQUE KEY ux_ev_selector (selector),
  INDEX idx_ev_user (user_id),
  INDEX idx_ev_expires (expires_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
