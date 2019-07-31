package com.springmvc.controller;

import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;
import com.springmvc.service.GoodsService;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;


/**
 * 物资控制层
 */
@RestController
@RequestMapping("/goodsController")
public class GoodsController {

    @Resource
    private GoodsService goodsService;

    /**
     * 增加物资种类
     */
    @RequestMapping("/addGoods")
    public Map<String,Object> addGoods(Goods goods){
        System.out.println("控制层，增加物资及种类信息...");
        return goodsService.addGoods(goods);
    }

    /**
     * 删除物资种类
     */
    @RequestMapping("/deleteGoods")
    public Map<String,Object> deleteGoods(Goods goods){
        System.out.println("控制层，删除物资种类及信息...");
        return goodsService.deleteGoods(goods);
    }


    /**
     * 修改物资数量（预约）
     */
    @RequestMapping("/reservationGoods")
    public Map<String,Object> reservationGoods(@RequestBody List<BorrowGoods> list){
        System.out.println("控制层，预约物资....");
        return goodsService.reservationGoods(list);
    }

    /**
     * 修改物资数量（借出）
     */
    @RequestMapping("/borrowedGoods")
    public Map<String, Object> borrowedGoods(@RequestBody List<BorrowGoods> list){
        System.out.println("控制层，借出物资....");
        return goodsService.borrowedGoods(list);
    }

    /**
     * 修改物资数量（归还）
     */
    @RequestMapping("/returnGoods")
    public Map<String,Object> returnGoods(@RequestBody List<BorrowGoods> list){
        System.out.println("控制层，归还物资....");
        return goodsService.returnGoods(list);
    }
    /**
     * 借出物资归还之后，将借用物资表的borrow_number全部置为0
     */
    @RequestMapping("/setZero")
    public Map<String,Object> setZero(@RequestBody List<BorrowGoods> list){
        System.out.println("控制层，将借用物资表borrow_number置零...");
        return goodsService.setZero(list);
    }



    /**
     * 查询物资
     */
    @RequestMapping("/selectGoods")
    public Object selectGoods(String goods_name){
        System.out.println("控制层，查询物资信息...");
        return goodsService.selectGoods(goods_name);
    }

    /**
     * 根据单位id查询所有物资
     */
    @RequestMapping("/getAllGoods")
    public List<Goods> getAllGoods(int unit_id){
        System.out.println("控制层，查询所有物资信息...");
        return goodsService.getAllGoods(unit_id);
    }
}
