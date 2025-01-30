WITH sources as (

SELECT * FROM {{ source('northwind', 'orders') }}

)

SELECT
    order_id,
    order_date,
    customer_id,
    status,
    amount,
    country_code
FROM
    sources