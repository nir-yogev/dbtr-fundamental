with payments as (
    
    select id as payment_id
    ,orderid as order_id
    ,paymentmethod as payment_method
    ,status
    ,amount/100 amount 
    ,created created_at 
    , _batched_at   
    from {{ source ('stripe','payment')}}
)

select * from payments