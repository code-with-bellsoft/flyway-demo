DO
$$
BEGIN
    -- Check table 'civilian' exists
    IF EXISTS (
        SELECT 1
        FROM   pg_catalog.pg_class  c
        JOIN   pg_catalog.pg_namespace n ON n.oid = c.relnamespace
        WHERE  c.relname = 'civilian'
        AND    c.relkind = 'r'          -- ordinary table
    ) THEN
        -- Check index is absent
        IF NOT EXISTS (
            SELECT 1
            FROM   pg_class c
            WHERE  c.relname = 'idx_civilian_birth_date'
        ) THEN
            CREATE INDEX idx_civilian_birth_date ON civilian (birth_date);
        END IF;
    END IF;
END
$$;