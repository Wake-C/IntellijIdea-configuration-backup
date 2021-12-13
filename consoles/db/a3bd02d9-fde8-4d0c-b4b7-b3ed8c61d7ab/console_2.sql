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
        shop_id=36
