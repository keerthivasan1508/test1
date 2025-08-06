{{ config(materialized='incremental',
   unique_key ='id'
) }}

/*with source_data as (

SELECT * FROM {{ source('public', 'my_table') }} m
where  true and   
{{ m_days_filter('updated_at') }} 
)*/

select *
from {{ source('public', 'my_table') }}
where {{ m_days_filter('updated_at') }}