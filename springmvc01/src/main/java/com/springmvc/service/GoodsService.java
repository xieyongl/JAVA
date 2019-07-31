package com.springmvc.service;

import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;

import java.util.List;
import java.util.Map;

public interface GoodsService {

    /**
     * 判断物资是否存在
     */
    Integer goods_IsExist(String goods_name);
    Integer goods_isExistById(int goods_id);

    /**
     * 增加物资
     */
    Map<String,Object> addGoods(Goods goods);


    /**
     * 删除物资种类及信息
     */
    Map<String,Object> deleteGoods(Goods goods);


    /**
     * 修改物资数量（预约）
     *
     * 将借用物资表里面的各类物资数量判断存入goods表
     */
    Map<String,Object> reservationGoods(List<BorrowGoods> list);

    /**
     * 单个物资的预约
     * @param goods_id
     * @param boorow_number
     * @return
     */
    boolean reservationGoods(int goods_id, int boorow_number);
    /**
     * 修改reservation_number
     */
    Integer change_reservationnumber(int goods_id,int reservation_number);
    Integer reduce_reservationnumber(int doods_id,int borrow_number);
    /**
     * 修改rest_number
     */
    Integer change_restnumber(int goods_id,int borrow_number);


    /**
     * 改变borrowed_number
     */
    Integer change_borrowednumber(int goods_id,int boorow_number);
    /**
     *
     */

    /**
     * 修改物资数量（借出一类）
     */
    boolean borrowedOneGoods(int goods_id,int borrow_number);

    /**
     * 修改物资数量（借出）
     * 将预约的物资数量给到借出的物资数量
     */
    Map<String, Object> borrowedGoods(List<BorrowGoods> list);


    /**
     * 修改借出数量（归还之后，借出数量减少）
     */
     Integer changeToBorrowedNumber(int goods_id,int borrow_number);

    /**
     * 修改剩余数量（归还）
     * return_ToRestNumber
     */
    Integer returnToRestNumber(int goods_id,int borrow_number);

    /**
     * 归还单类物资
     */
    boolean returnOneGoods(int goods_id,int borrow_number);

    /**
     * 修改物资（归还）
     */
    Map<String,Object> returnGoods(List<BorrowGoods> list);

    /**
     * 根据物资名查询物资种类信息
     */
    Object selectGoods(String goods_name);

    /**
     *根据物资id查询物资信息
     */
    Goods select_goodsById(int goods_id);

    /**
     * 根据单位id查询所有物资
     */
    List<Goods> getAllGoods(int unit_id);


    /**
     * 借出物资归还之后，将借用物资表的borrow_number全部置为0
     */
    Map<String,Object> setZero(List<BorrowGoods> list);
    /**
     * 借出物资归还之后，将借用物资表的一类borrow_number置为0
     */
    Integer setOneZero(BorrowGoods borrowGoods);

}
