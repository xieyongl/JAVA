package com.springmvc.controller;

import com.springmvc.domain.Apply;
import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;
import com.springmvc.service.BorrowGoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/borrowGoodsController")
public class BorrowGoodsController {

    @Resource
    private BorrowGoodsService borrowGoodsService;


    /**
     *根据unit_id查询borrow_goods内容
     */
    @RequestMapping("/selectBorrowGoodsByUnitId")
    public List<Apply> selectBorrowGoodsByUnitId(int unit_id){
        System.out.println("控制层，通过目标单位id查询借用物资情况...");
        return borrowGoodsService.selectBorrowGoodsByUnitId(unit_id);
    }

    /**
     * 物资申请表
     */
    @RequestMapping("/applyGoods")
    public Map<String,Object> applyGoods(Apply apply){
        System.out.println("控制层，填写物资申请表...");
        return borrowGoodsService.applyGoods(apply);
    }



    /**
     * 操作借用物资表--借用（借用方）
     */
    @RequestMapping("/reservationGoods")
    public Map<String, Object> reservationGoods(@RequestBody List<BorrowGoods> list) {
        System.out.println("控制层，借用物资...");
        return borrowGoodsService.borrowGoods(list);
    }

    /**
     * 借出物资归还之后，通过查看借用物资表（tbl_borrowgoods）得到是否归还的信息
     */
    @RequestMapping("/isReturn")
    public Map<String,Object> isReturn(@RequestBody List<BorrowGoods> list){
        System.out.println("控制层，归还是否成功消息提醒...");
        return borrowGoodsService.isReturn(list);
    }
    /**
     *操作归还物资（借用方）
     */
}
