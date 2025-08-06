

/*with source_data as (

SELECT * FROM "postgres"."public"."my_table" m
where  true and   

    CAST(updated_at AS TIMESTAMP) >= CURRENT_TIMESTAMP - INTERVAL '1 day'
 
)*/

select *
from "postgres"."public"."my_table"
where 
    CAST(updated_at AS TIMESTAMP) >= CURRENT_TIMESTAMP - INTERVAL '1 day'
