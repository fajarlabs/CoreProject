SELECT 'drop sequence ' || c.relname || ';' FROM pg_class c WHERE
(c.relkind = 'S');