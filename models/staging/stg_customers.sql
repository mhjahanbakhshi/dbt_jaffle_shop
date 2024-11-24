with

source as (
    select * from {{ source('raw', 'customers') }}
),

transformed as (
    select
        -- identifiers
        id as customer_id,
        -- personal information
        name as customer_name
    from source
)

select * from transformed
