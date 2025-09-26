ALTER TABLE projects ADD COLUMN tag;
UPDATE projects SET tag=COALESCE((SELECT substr(tag, instr(tag, ":") + 1) FROM destinations WHERE project=projects.id AND tagRepo=1), '');
ALTER TABLE destinations DROP COLUMN tagRepo;