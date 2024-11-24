AS 
source AS(
    SELECT *
    FROM 
        {{ source('jaffle_shop','items')}}
),
renamed (
    SELECT
        id AS item_id,
        order_id AS order_id,
        sku as product_id
    FROM source
)

SELECT * FROM renamed;