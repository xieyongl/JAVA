package com.springmvc.dao;

import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public interface GoodsMapper {

    /**
     * 判断物资是否存在
     */
    Integer goods_IsExist(String goods_name);
    Integer goods_isExistById(int goods_id);
    /**
     * 增加物资种类数量等信息
     */
    boolean add_Goods(Goods goods);

    /**
     * 删除物资种类及信息
     */
    Integer delete_Goods(Goods goods);


    /**
     * 修改物资数量（预约）
     */
    boolean reservation_Goods(Goods goods);
    boolean reservation_goods(int goods_id,int boorow_number);

    /**
     * 修改物资数量（借出）
     */
    boolean boorowed_Goods(Goods goods);

    /**
     * 修改物资数量（归还）
     */
    boolean return_Goods(Goods goods);
    /**
     * 修改剩余数量（归还）
     * return_ToRestNumber
     */
    Integer return_ToRestNumber(@Param("goods_id")int goods_id,@Param("rest_number")int rest_number);
    /**
     * 修改借出数量（归还之后，借出数量减少）
     */
     Integer change_ToBorrowedNumber(@Param("goods_id")int goods_id,@Param("borrow_number")int borrow_number);


    /**
     * 修改reservation_number
     */
    Integer change_reservationnumber(@Param("goods_id")int goods_id,@Param("res_number") int res_number);
    /**
     * 修改rest_number
     */
    Integer change_restnumber(@Param("goods_id")int goods_id,@Param("rest_number")int rest_number);
    /**
     * 通过借出，减少预约数量（从而去增加借出数量）
     */
    Integer reduce_reservationnumber(@Param("goods_id")int goods_id,@Param("reservation_num")int reservation_num);
    /**
     * 借出一类物资，修改其borrowed_number
     */
    Integer change_borrowednumber(@Param("goods_id")int goods_id,@Param("borrow_number")int borrow_number);


    /**
     *根据物资名查询物资信息
     */
    Goods select_goods(String goods_name);
    /**
     *根据物资id查询物资信息
     */
    Goods select_goodsById(int goods_id);

    /**
     *
     * 查询所有物资
     */
    List<Goods> get_AllGoods(int unit_id);

    /**
     * 通过物资id查询物资剩余数量
     */
    Goods getGoodsRestNumById(int goods_id);


    /**
     * 借出物资归还之后，将借用物资表的一类borrow_number置为0
     */
    Integer set_OneZero(BorrowGoods borrowGoods);



    /**
     * 查询根据id物资剩余数量
     */

}
