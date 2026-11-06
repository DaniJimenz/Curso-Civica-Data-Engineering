{{
    config(
        severity='error',
        warn_if='>0',
        error_if='>10'
    )
}}

select order_id , order_items_id  from {{ ref('fct_orders') }}
join {{ ref('fct_order_items')}}
on orders.order_id. = 
