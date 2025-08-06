
  
    

  create  table "postgres"."dervied_intermediate"."sample2__dbt_tmp"
  
  
    as
  
  (
    with source_data as (

SELECT * FROM "postgres"."public"."sample1" 

)
select *
from source_data
  );
  