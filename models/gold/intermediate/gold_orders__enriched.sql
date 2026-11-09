WITH orders AS (
    SELECT * FROM {{ ref('slv_sql_server_dbo__orders') }} 
), addresses AS (
    SELECT * FROM {{ ref('slv_sql_server_dbo__addresses') }} 
), promos AS (
    SELECT * FROM {{ ref('slv_sql_server_dbo__promos') }} 
)
   SELECT * FROM orders
   LEFT JOIN addresses 
   ON orders.address_id = addresses.address_id 
   LEFT JOIN promos 
   ON orders.promo_id = promos.promo_id



