
  
    

  create  table "postgres"."dervied_intermediate"."sample3__dbt_tmp"
  
  
    as
  
  (
    with source_data as (

SELECT * FROM "postgres"."public"."sample3" 

)
select *
from source_data
  );
  