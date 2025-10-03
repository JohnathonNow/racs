ALTER TABLE credentials ADD COLUMN updated INTEGER;
ALTER TABLE credentials ADD COLUMN name STRING;
UPDATE credentials SET name = description;
UPDATE credentials SET updated = 0 WHERE updated IS NULL;
UPDATE credentials SET expired = 0 WHERE expired IS NULL;