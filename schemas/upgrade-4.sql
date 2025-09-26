ALTER TABLE destinations ADD COLUMN tagRepo INTEGER;
UPDATE destinations SET tagRepo=1 WHERE project IN (SELECT id FROM projects WHERE tagRepo=1);
ALTER TABLE projects DROP COLUMN tagRepo;