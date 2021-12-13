select
        ds.*,
               ifnull((select
            COUNT(*) AS countReference
        FROM
            t_mall_seller s
        WHERE
            bus_user_id = ds.employee_id
            AND s.`is_start_use` = 1
            AND s.`check_status` = 1
            AND s.referees_member_id != 0 & s.referees_member_id is not null
            AND s.is_seller_type = 1
        group by
            referees_member_id
        order by
            countReference desc ),
        0) AS countReference
    from
        t_mall_distribution_statistics ds
    where
        ds.bus_id =2924
    order by
        countReference desc;
;-- -. . -..- - / . -. - .-. -.--
select
        ds.*,
               ifnull((select
            COUNT(*) AS countReference
        FROM
            t_mall_seller s
        WHERE
            bus_user_id = ds.employee_id
            AND s.`is_start_use` = 1
            AND s.`check_status` = 1
            AND s.referees_member_id != 0 & s.referees_member_id is not null
            AND s.is_seller_type = 1
        group by
            referees_member_id
        order by
            countReference desc ),
        0) AS countReference
    from
        t_mall_distribution_statistics ds
    WHERE
        ds.bus_id =123123
             ds.employee_id in 2222;
;-- -. . -..- - / . -. - .-. -.--
select
        ds.*,
               ifnull((select
            COUNT(*) AS countReference
        FROM
            t_mall_seller s
        WHERE
            bus_user_id = ds.employee_id
            AND s.`is_start_use` = 1
            AND s.`check_status` = 1
            AND s.referees_member_id != 0 & s.referees_member_id is not null
            AND s.is_seller_type = 1
        group by
            referees_member_id
        order by
            countReference desc ),
        0) AS countReference
    from
        t_mall_distribution_statistics ds
    WHERE
        ds.bus_id =2924
        AND ds.employee_id in 
    order by
        countReference;
;-- -. . -..- - / . -. - .-. -.--
select
        ds.*,
               ifnull((select
            COUNT(*) AS countReference
        FROM
            t_mall_seller s
        WHERE
            bus_user_id = ds.employee_id
            AND s.`is_start_use` = 1
            AND s.`check_status` = 1
            AND s.referees_member_id != 0 & s.referees_member_id is not null
            AND s.is_seller_type = 1
        group by
            referees_member_id
        order by
            countReference desc ),
        0) AS countReference
    from
        t_mall_distribution_statistics ds
    WHERE
        ds.bus_id =2924
        AND ds.employee_id;