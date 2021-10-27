SELECT owner, table_name, column_name
    FROM all_tab_columns
    WHERE (column_name LIKE '%SELT_LINE_LENGTH%'
--        OR column_name LIKE '%SERVICE_%TYPE%'
        )
        AND table_name NOT LIKE 'V_%';
