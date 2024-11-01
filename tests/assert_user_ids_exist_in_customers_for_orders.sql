-- Singular test

select *
from {{ ref('stg_jaffle_shop__orders') }} ord
where not exists (
    select customer_id
    from {{ ref('stg_jaffle_shop__customers') }}
    where customer_id = ord.customer_id
)