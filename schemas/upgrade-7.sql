ALTER TABLE credentials ADD COLUMN updated INTEGER;
ALTER TABLE credentials ADD COLUMN name STRING;
UPDATE credentials SET name = description;
UPDATE credentials SET updated = 0 WHERE updated IS NULL;
UPDATE credentials SET expiry = 0 WHERE expiry IS NULL;