package com.springmvc.service;

import com.springmvc.dao.GoodsMapper;
import com.springmvc.domain.BorrowGoods;
import com.springmvc.domain.Goods;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GoodsServiceImp implements GoodsService {

    @Resource
    private GoodsMapper goodsMapper;

    /**
     * 判断物资是否存在
     * @param goods_name
     * @return
     */
    @Override
    public Integer goods_IsExist(String goods_name) {
        return goodsMapper.goods_IsExist(goods_name);
    }

    public Integer goods_isExistById(int goods_id){
        return goodsMapper.goods_isExistById(goods_id);
    }

    /**
     * 物资单个预约
     * @param boorow_number
     * @return
     */
    public boolean reservationGoods(int goods_id, int boorow_number){
        //1.将tbl_borrowgoods表的borrow_number加到tbl_goods表中的reservation_number
        //2.将tbl_goods表的rest_number 改成 goods_total-reservation_number
        boolean flag = false;
        if(this.change_reservationnumber(goods_id,boorow_number)==1){
            this.change_restnumber(goods_id,boorow_number);
            flag = true;
        }
        return flag;
    }


    /**
     * 增加物资种类
     * @param goods
     * @return
     */
    public Map<String,Object> addGoods(Goods goods){
        System.out.println("业务层，增加物资种类信息...");
        Map<String,Object> hashmap = new HashMap<>();
        //判断物资是否存在
        if(goods_IsExist(goods.getGoods_name()) == 1){
            //存在，则增加物资种类失败
            System.out.println("物资已存在，增加物资成功...");
            hashmap.put("msg","物资已存在，增加物资种类失败...");
        }else{
            //不存在，可以增加物资种类信息
            // 如果物资数量小于等于0，增加物资失败
            if(goods.getGoods_total() < 0){
                hashmap.put("msg","物资数量不能小于0...");
            }
            else {
                //否则，增加物资成功
                System.out.println("增加物资成功...");
                goodsMapper.add_Goods(goods);
                hashmap.put("msg","增加物资种类成功... ");
            }
        }
        return hashmap;
    }

    /**
     * 删除物资种类及信息
     */
    public Map<String,Object> deleteGoods(Goods goods){
        Map<String,Object> hashmap = new HashMap<>();
        //判断物资种类是否存在
        //存在,可以进行删除操作

        if(goods_isExistById(goods.getGoods_id()) == 1){
            Goods temp_goods = goodsMapper.select_goodsById(goods.getGoods_id());
            //如果物资剩余数量等于总数量，可以删除
            if(temp_goods.getRest_number() == temp_goods.getGoods_total()){
                System.out.println(temp_goods.getRest_number()+"................."+temp_goods.getGoods_total());
                if(goodsMapper.delete_Goods(temp_goods) == 1){
                    hashmap.put("msg","删除物资种类信息成功...");
                }else{
                    hashmap.put("msg","删除物资种类信息失败...");
                }
            }else {
                //否则不可以删除
                hashmap.put("msg","当前物资出借还未全部归还，不能删除物资种类信息...");
            }
        }
        //不存在
        else{
            hashmap.put("msg","该物资不存在...");
        }
        return hashmap;
    }


    /**
     * 修改reservation_number
     *
     */
    public Integer change_reservationnumber(int goods_id, int boorow_number){
        System.out.println("修改单个物资的reservation_number...");
        int res_number = goodsMapper.select_goodsById(goods_id).getReservation_number();
        System.out.println("加预约数之前：" + res_number);
        res_number += boorow_number;
        System.out.println("加上预约数之后：" + res_number);
        return goodsMapper.change_reservationnumber(goods_id,res_number);
    }
    /**
     * 修改rest_number
     */
    public Integer change_restnumber(int goods_id, int boorow_number){
        System.out.println("修改单个物资的rest_number...");
        //本次预约的预约数
        int res_number = boorow_number;

        //增加本次预约之前的剩余数
        int rest_number = goodsMapper.select_goodsById(goods_id).getRest_number();
        System.out.println("增加本次预约之前的剩余数:" + rest_number);
        //增加本次预约之后的剩余数
        rest_number -= res_number;
        return goodsMapper.change_restnumber(goods_id,rest_number);

    }

    /**
     * 通过借出，减少预约数量（从而去增加借出数量）
     */
    public Integer reduce_reservationnumber(int goods_id, int borrow_number){
        int reservation_num = goodsMapper.select_goodsById(goods_id).getReservation_number();
        System.out.println("预约物资还未被借走的数量："+ reservation_num);
        reservation_num -= borrow_number;
        System.out.println("预约物资被借走之后的数量："+ reservation_num);
        return goodsMapper.reduce_reservationnumber(goods_id,reservation_num);
    }
    /**
     * 借出一类物资，修改其borrowed_number
     */
    public Integer change_borrowednumber(int goods_id, int borrow_number){
        return goodsMapper.change_borrowednumber(goods_id,borrow_number);
    }

    /**
     * 修改物资数量（预约）
     */
    public Map<String,Object> reservationGoods(List<BorrowGoods> list){
        System.out.println("业务层，预约物资...");
        Map<String,Object> hashmap = new HashMap<>();

        for(int i=0;i<list.size();i++) {
            BorrowGoods borrowGoods = list.get(i);
            //判断所借物资是否每个都存在，都存在才可以出借，否则不能
            if (goods_isExistById(list.get(i).getGoods_id()) == 1) {
                System.out.println(goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name()+"存在，可借...");
                hashmap.put("msg",goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "存在，可借...");
            } else {
                System.out.println("id为：" + borrowGoods.getGoods_id() + "的物资不存在，不可借...");
                hashmap.put("msg","id为：" + borrowGoods.getGoods_id() + "不存在，不可借...");
                return hashmap;
            }
        }
        //遍历list，判断物资被借用的数量是否小于物资剩余数
        for(int i=0;i<list.size();i++){
                BorrowGoods borrowGoods = list.get(i);
                if (borrowGoods.getBorrow_number() <= goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getRest_number()) {
                    //如果小于物资剩余数量，进行预约操作
                    //将tbl_borrowgoods表中的borrow_number的值复制到tbl_goods表中的reservation_number

                    if(this.reservationGoods(borrowGoods.getGoods_id(),borrowGoods.getBorrow_number())){
                        System.out.println(goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "预约成功...");
                        hashmap.put("msg", "预约成功...");
                    }
                } else {
                    //如果大于，则不可预约
                    System.out.println(goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "预约失败...");
                    hashmap.put("msg",goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "物资数量不满足...");
                }
            }
        return hashmap;
    }

    /**
     * 修改物资数量（借出一类物资）
     * 将预约的物资数量给到借出的物资数量
     */
    public boolean borrowedOneGoods(int goods_id,int borrow_number){
        boolean flag = false;
        //1.将borrowGoods的borrow_number 传到tbl_goods的borrowed_number
        if(change_borrowednumber(goods_id,borrow_number) == 1){
            //2.tbl_goods中的reservation_number - borrowed_number，
            this.reduce_reservationnumber(goods_id,borrow_number);
            flag = true;
        }
        return flag;
    }

    /**
     * 借出操作
     * 修改物资数量（借出）
     * 将预约的物资数量给到借出的物资数量
     */
    public Map<String, Object> borrowedGoods(List<BorrowGoods> list){
        Map<String,Object> hashmap = new HashMap<>();

        for(int i=0;i<list.size();i++){
            BorrowGoods borrowGoods = list.get(i);
            if(this.borrowedOneGoods(borrowGoods.getGoods_id(),borrowGoods.getBorrow_number())){
                System.out.println(goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name()+"借出成功...");
                hashmap.put("msg",goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name()+"借出成功...");
            }else{
                System.out.println(goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name() + "未借出...");
                hashmap.put("msg",goodsMapper.select_goodsById(borrowGoods.getGoods_id()).getGoods_name()+"未借出...");
            }
        }

        return hashmap;
    }


    /**
     * 修改剩余数量（归还）
     * return_ToRestNumber
     */
    public Integer returnToRestNumber(int goods_id,int borrow_number){
        //1.rest_number 加上被借的物资数量
        int rest_number = goodsMapper.select_goodsById(goods_id).getRest_number();
        System.out.println("归还之前物资的剩余数量：" + rest_number);
        rest_number += borrow_number;
        System.out.println("归还之后物资的剩余数量：" + rest_number);
        return goodsMapper.return_ToRestNumber(goods_id,rest_number);
    }
    /**
     * 修改借出数量（归还之后，借出数量减少）
     */
    public Integer changeToBorrowedNumber(int goods_id,int borrow_number){
        //borrowed_number 减去归还（被借的数量）
        int borrowednumber = goodsMapper.select_goodsById(goods_id).getBorrowed_number();
        System.out.println("归还之前被借用的数量：" + borrowednumber);
        borrowednumber -= borrow_number;
        System.out.println("归还之后被借用的数量：" + borrowednumber);
        return goodsMapper.change_ToBorrowedNumber(goods_id,borrowednumber);
    }
    /**
     * 归还单类物资
     */
    public boolean returnOneGoods(int goods_id,int borrow_number){
        boolean flag = false;
        if(this.returnToRestNumber(goods_id,borrow_number) == 1 && this.changeToBorrowedNumber(goods_id,borrow_number) == 1){
            flag = true;
        }
        return flag;
    }
    /**
     * 修改物资（归还）
     */

    public Map<String,Object> returnGoods(List<BorrowGoods> list){
        System.out.println("业务层，归还物资...");
        Map<String,Object> hashmap = new HashMap<>();
        for(int i=0;i<list.size();i++){
            BorrowGoods temp_borrow = list.get(i);
            //归还操作。通过物资借用单的物资借用数据实现归还
            //归还一类物资
            this.returnOneGoods(temp_borrow.getGoods_id(),temp_borrow.getBorrow_number());
            System.out.println(goodsMapper.select_goodsById(temp_borrow.getGoods_id()).getGoods_name() + "归还成功...");
            hashmap.put("msg",goodsMapper.select_goodsById(temp_borrow.getGoods_id()).getGoods_name() + "归还成功...");
        }
        return hashmap;
    }





    /**
     * 查询物资种类信息
     */
    public Object selectGoods(String goods_name){
        Map<String,Object> hashmap = new HashMap<>();
        //查询物资种类是否存在
        if(goods_IsExist(goods_name) == 1){
            //存在,执行查询操作
            return goodsMapper.select_goods(goods_name);
        }
        else {
            //不存在，返回提示信息
            hashmap.put("msg","该种类物资不存在...");
        }
        return hashmap;
    }

    /**
     *根据物资id查询物资信息
     */
    public Goods select_goodsById(int goods_id){
        return goodsMapper.select_goodsById(goods_id);
    }

    /**
     * 根据单位id查询所有物资
     */
    public List<Goods> getAllGoods(int unit_id) {
        List<Goods> list = goodsMapper.get_AllGoods(unit_id);
        return list;
    }



        /**
         * 借出物资归还之后，将借用物资表的borrow_number全部置为0
         */
        public Map<String,Object> setZero(List<BorrowGoods> list){
            System.out.println("业务层，将借用物资表的borrow_number全部置为0...");
            Map<String,Object> hashmap = new HashMap<>();
            for(int i=0;i<list.size();i++) {
                BorrowGoods borrowGoods = list.get(i);
                int borrow_number = borrowGoods.getBorrow_number();
                System.out.println("物资id为："+borrowGoods.getGoods_id()+"置零之前的数量："+ borrow_number);
                borrowGoods.setBorrow_number(0);

                if(this.setOneZero(borrowGoods) <= 0){
                    hashmap.put("msg","物资归还出现错误，请联系管理员解决.....");
                    return hashmap;
                }
            }
            hashmap.put("msg","借用物资已归还...");
            return hashmap;
        }
        /**
         * 借出物资归还之后，将借用物资表的一类borrow_number置为0
         */
        public Integer setOneZero(BorrowGoods borrowGoods){
            return goodsMapper.set_OneZero(borrowGoods);
        }

}
