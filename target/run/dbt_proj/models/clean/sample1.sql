
  
    

  create  table "postgres"."dervied_clean"."sample1__dbt_tmp"
  
  
    as
  
  (
    with source_data as (

SELECT * FROM "postgres"."dervied_clean"."tgt_table" 

)
select *
from source_data
  );
  