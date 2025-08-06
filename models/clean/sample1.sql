

with source_data as (

SELECT * FROM {{ ref('tgt_table') }} 

)
select *
from source_data