WITH sources as (

SELECT * FROM {{ source('northwind', 'customers') }}

)

SELECT
    id as customer_id,
    name,
    email
FROM
    sources
