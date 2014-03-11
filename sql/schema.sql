DROP TABLE IF EXISTS library;
CREATE TABLE library (
	library_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NULL DEFAULT NULL,
	url VARCHAR(255) NULL DEFAULT NULL,
	library_type VARCHAR(255) NOT NULL DEFAULT '',
	country VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE = InnoDB;

DROP TABLE IF EXISTS volumetry;
CREATE TABLE volumetry (
	library_id CHAR(128) NULL DEFAULT NULL,
	name VARCHAR(255) NOT NULL,
	value INTEGER NOT NULL DEFAULT 0,
	inserted TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

DROP TABLE IF EXISTS systempreference;
CREATE TABLE systempreference (
	library_id INTEGER NOT NULL,
	name VARCHAR(255) NOT NULL,
	value TEXT NULL
) ENGINE = InnoDB;