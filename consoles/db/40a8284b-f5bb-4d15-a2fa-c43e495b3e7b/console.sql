alter table t_mall_order_express
    add order_product_type tinyint default 0 not null comment '订单商品类型 0 普通商品 1=退货' after receiver_address;


