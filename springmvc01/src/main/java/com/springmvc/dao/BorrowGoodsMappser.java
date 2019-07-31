package com.springmvc.dao;

import com.springmvc.domain.Apply;
import com.springmvc.domain.BorrowGoods;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface BorrowGoodsMappser {


    /**
     * 物资申请表
     */
    Integer apply_Goods(Apply apply);

    /**
     *借用（预约）物资
     */
    Integer borrow_Goods(BorrowGoods borrowGoods);

    /**
     *根据unit_id查询borrow_goods内容
     */
    List<Apply> selectBorrowGoods_ByUnitId(int unit_id);

    /**
     * 根据unit_id 和 goods_id判断borrow_number是否为零
     */
    Integer is_Zero(BorrowGoods borrowGoods);



}
