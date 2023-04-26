update
        t_mall_product_eticket_duration_price
    set
        is_delete=1
    where
        pro_id=1
        and inv_id=1;
;-- -. . -..- - / . -. - .-. -.--
update
        t_mall_product_inventory  
    set
        is_delete = 1
    where
        product_id =1;
;-- -. . -..- - / . -. - .-. -.--
select
    id, pro_buy_way, shop_id, group_id, pro_type_id, is_presell,pro_presell_end, pro_delivery_start,
    pro_delivery_end, pro_stock_total, pro_sale_total, is_show_stock, pro_code, pro_name,
    pro_price, pro_cost_price, pro_freight_set, pro_freight_temp_id,pro_freight_price,restriction_start_num,
    pro_restriction_num, is_timing_sale, pro_time_sale, is_member_discount, is_coupons,
    is_invoice, is_warranty, user_id, create_time, edit_time, is_publish,check_status,
    is_delete,two_code_path,is_specifica,return_day,is_integral_change_pro,change_integral,views_num,is_show_views,
    is_return,member_type,is_integral_deduction,is_fenbi_deduction,is_fenbi_change_pro,change_fenbi,
    pro_label,pro_weight,sales_base,card_type,is_mall_show,flow_id, flow_record_id, erp_pro_id, erp_inv_id, is_sync_erp,
    is_merge_pro_erp,template_id,is_platform_check,is_show_sale,union_price,union_classify_id,is_join_union,is_set_union_price,bar_code,pro_from,
    is_show_self_support,pro_unit_id,pro_unit_name,visitor_num,is_show_visitor,is_show_union,pro_describe, pro_image,
    is_multi_unit,unit_sort,unit_conversion,unit_jxc_id,is_show_general,is_together,is_take_appointment,
    is_compare_video,video_custom_name,compare_video_url,compare_image_url,is_save_more,
    pro_category_id,pro_category_name,pro_brand_id,pro_brand_name,is_show_code,is_show_cost_price,custom_buyer_bottom
from
    t_mall_product
WHERE
        shop_id=36;
;-- -. . -..- - / . -. - .-. -.--
select
    id, shop_card_id, store_id, pro_id,bus_id, pro_source_type, pro_type, discount_type, discount_value,
    single_specification, is_delete, create_id, modify_id, create_time, modify_time
from
    t_mall_shop_card_product
where
        pro_id=163886718829714
  and shop_card_id=163886527988431
  and store_id=37
  and is_delete=0;
;-- -. . -..- - / . -. - .-. -.--
select
    id, shop_card_id, store_id, pro_id,bus_id, pro_source_type, pro_type, discount_type, discount_value,
    single_specification, is_delete, create_id, modify_id, create_time, modify_time
from
    t_mall_shop_card_product
where
        pro_id=163886718829714;
;-- -. . -..- - / . -. - .-. -.--
select
    id, shop_card_id, store_id, pro_id,bus_id, pro_source_type, pro_type, discount_type, discount_value,
    single_specification, is_delete, create_id, modify_id, create_time, modify_time
from
    t_mall_shop_card_product
where
        pro_id=163886718829714
  and shop_card_id=163886527988431;
;-- -. . -..- - / . -. - .-. -.--
alter table rabbitmq_log modify column msg longtext character set utf8mb4;
;-- -. . -..- - / . -. - .-. -.--
select * from t_mall_shop_cart where id=215339865060368;
;-- -. . -..- - / . -. - .-. -.--
select * from t_mall_shop_cart where product_id=215339865060349;
;-- -. . -..- - / . -. - .-. -.--
select
    *
from
    t_mall_intra_city
WHERE
        shop_id=36
  and `distribution_status` =1;
;-- -. . -..- - / . -. - .-. -.--
select order_status from t_mall_order where  order_no='SC250504068857888';
;-- -. . -..- - / . -. - .-. -.--
select bus_user_id from t_mall_order where  order_no='SC250504068857888';
;-- -. . -..- - / . -. - .-. -.--
SELECT
    take_id
FROM
    t_mall_take_their_store
where
        store_id = 250504026914969
  and is_del = 0
order by
    take_id desc;