explain select
    *
from
    t_mall_express_track
where
        delivery_id = 1
  and is_delete = 0
order by
    accept_time desc


create index `idx(delivery_id)` on t_mall_express_track(delivery_id);

create index `idx(member_id-product_id)`
    on t_mall_order_detail (member_id, product_id)
