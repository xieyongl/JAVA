package com.springmvc.service;

import com.springmvc.domain.Apply;
import com.springmvc.domain.BorrowGoods;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

public interface BorrowGoodsService {

    /**
     * 物资申请表
     */
     Map<String,Object> applyGoods(Apply apply);

    /**
     *操作借用物资表（借用方）
     */
    Map<String,Object> borrowGoods(List<BorrowGoods> list);

    /**
     *根据unit_id查询borrow_goods内容
     */
    List<Apply> selectBorrowGoodsByUnitId(int unit_id);

    /**
     * 借出物资归还之后，通过查看借用物资表（tbl_borrowgoods）得到是否归还的信息
     */
     Map<String,Object> isReturn(List<BorrowGoods> list);



}
