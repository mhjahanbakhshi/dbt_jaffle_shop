with

source as (
    select * from {{ source('jaffle_shop', 'customers') }}
),

renamed as (
    select
        -- identifiers
        id as customer_id,
        -- personal information
        name as customer_name
    from source
)

select * from renamed
