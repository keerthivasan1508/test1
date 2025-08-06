WITH source_data AS (
    SELECT 
        t1.id AS id,
        t1.name AS name,
        t1.email AS email,
        t2.phone_number AS phone_number,
        t2.job_title AS job_title
    FROM {{ source('public', 'my_table') }} t1
    LEFT JOIN {{ source('public', 'my_table1') }} t2  -- JOIN should come before WHERE
    ON t1.id = t2.id
    WHERE DATE(t1.updated_at)::DATE < '2025-02-01'::DATE

)

SELECT * FROM source_data
