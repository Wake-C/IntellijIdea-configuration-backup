alter table t_mall_order_express
    add order_product_type tinyint default 0 not null comment '订单商品类型 0 普通商品 1=退货' after receiver_address;
;-- -. . -..- - / . -. - .-. -.--
explain      select
                 id,
                 bus_type,
                 bus_id,
                 order_delivery_type,
                 packages,
                 delivery_type,
                 order_id,
                 city_delivery_no,
                 express_id,
                 express_name,
                 express_no,
                 mark_destination,
                 sorting_code,
                 package_code,
                 package_name,
                 commodity_info,
                 is_delivery,
                 express_status,
                 is_track_sync,
                 delivery_time,
                 receive_time,
                 print_template,
                 item_type,
                 shipper_name,
                 shipper_phone,
                 shipper_address,
                 receiver_name,
                 receiver_phone,
                 receiver_address,
                 order_product_type,
                 create_id,
                 modify_id,
                 create_time,
                 modify_time
             from
                 t_mall_order_express
             where
                     order_id in
                     ( 1 )
               and order_product_type=1;
;-- -. . -..- - / . -. - .-. -.--
create index 'idx(delivery_id)' on t_mall_express_track(delivery_id);
;-- -. . -..- - / . -. - .-. -.--
create index `idx(delivery_id)` on t_mall_express_track(delivery_id);
;-- -. . -..- - / . -. - .-. -.--
explain select
    *
from
    t_mall_express_track
where
        delivery_id = 1
  and is_delete = 0
order by
    accept_time desc;
;-- -. . -..- - / . -. - .-. -.--
explain select * from t_mall_order where order_no='SC255236785243717';