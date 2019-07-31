package com.springmvc.service;

import com.springmvc.dao.BorrowGoodsMappser;
import com.springmvc.dao.GoodsMapper;
import com.springmvc.domain.Apply;
import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BorrowGoodsServiceImp implements BorrowGoodsService {

    @Resource
    private BorrowGoodsMappser borrowGoodsMappser;
    @Resource
    private GoodsMapper goodsMapper;

    /**
     * 物资申请表
     */
    public Map<String,Object> applyGoods(Apply apply){
        Map<String,Object> hashmap = new HashMap<>();
        if(borrowGoodsMappser.apply_Goods(apply) == 1){
            System.out.println("填写物资申请表成功...");
            hashmap.put("msg","物资申请表填写成功...");
        }else{
            System.out.println("填写物资申请表失败...");
            hashmap.put("msg","填写物资申请表失败...");
        }
        return hashmap;
    }


    /**
     * 借用物资（借用方）
     *
     * @param list
     * @return
     */
    @Override
    public Map<String, Object> borrowGoods(List<BorrowGoods> list) {
        Map<String, Object> hashmap = new HashMap<>();
        //遍历判断每个物资是否存在
        for(int i=0;i<list.size();i++){
            BorrowGoods borrowGoods = list.get(i);
            //存在
            if(goodsMapper.goods_isExistById(borrowGoods.getGoods_id()) == 1){
                System.out.println("物资存在.可借...");
                hashmap.put("msg","物资存在，可借...");
            }else{
                //不存在
                System.out.println("物资不存在，不可借...");
                hashmap.put("msg",goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "物资不存在，不可借...");
                return hashmap;
            }
        }

        //遍历集合
        for (int i = 0; i < list.size(); i++) {
            BorrowGoods borrowGoods = list.get(i);
            System.out.println(borrowGoods);
            //如果集合的每个borrow_number 小于等于 goods的剩余数，则可以求借
            System.out.println(goodsMapper.getGoodsRestNumById(borrowGoods.getGoods_id()).getRest_number());
            if (borrowGoods.getBorrow_number() <= goodsMapper.getGoodsRestNumById(borrowGoods.getGoods_id()).getRest_number()) {
                if(borrowGoodsMappser.borrow_Goods(borrowGoods) == 1){
                    System.out.println("物资数量足够，可借");
                    hashmap.put("msg", "物资数量足够，可借...");
                }else{
                    System.out.println("物资数量不足，借用失败...");
                    hashmap.put("msg","物资数量不足，借用失败...");
                }
            } else {
                System.out.println("不可借");
                hashmap.put("msg", "不可借...");
            }
        }
        return hashmap;
    }

    /**
     *根据unit_id查询borrow_goods内容
     */
    public List<Apply> selectBorrowGoodsByUnitId(int unit_id){
        System.out.println("业务层，根据unit_id查询borrow_goods...");
        return  borrowGoodsMappser.selectBorrowGoods_ByUnitId(unit_id);
    }


    /**
     * 借出物资归还之后，通过查看借用物资表（tbl_borrowgoods）得到是否归还的信息
     */
    public Map<String,Object> isReturn(List<BorrowGoods> list){
        //遍历list，如果所有unit_id为目标单位的借用物资的数量都被值为零，即归还成功
        Map<String,Object> hashmap = new HashMap<>();
        for(int i=0;i<list.size();i++) {
            BorrowGoods borrowGoods = list.get(i);
            //判断borrow_number是否为零
            if(borrowGoodsMappser.is_Zero(borrowGoods) != 0){
                System.out.println("待还...");
                hashmap.put("msg","待还...");
                return hashmap;
            }
        }
        hashmap.put("msg","已还...");
        return hashmap;
    }



    /**
     * 归还物资
     *操作借用物资表（借用方）
     */
}


