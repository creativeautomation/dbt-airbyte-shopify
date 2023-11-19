with

source as (

    select * from {{ source('shopify', 'metafield_collections') }}

),

metafield_collections as (

    select
        id as metafield_collection_id,
        admin_graphql_api_id,
        owner_id,
        key,
        value,
        value_type,
        namespace,
        description,
        type,
        owner_resource,
        shop_url,
        created_at,
        updated_at

    from source

)

select * from metafield_collections