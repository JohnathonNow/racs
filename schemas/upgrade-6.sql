UPDATE credentials SET expiry = unixepoch(expiry);
UPDATE tasks SET time = unixepoch(time);