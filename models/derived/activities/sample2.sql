

with source_data as (

SELECT * FROM {{ source('public', 'sample1') }} 

)
select *
from source_data