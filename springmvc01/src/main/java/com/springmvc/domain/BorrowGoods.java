package com.springmvc.domain;

/**
 * 借用物资表实体类
 */
public class BorrowGoods {

    private int unit_id;
    private int goods_id;
    private int borrow_number;
    private String creat_time;

    public int getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(int unit_id) {
        this.unit_id = unit_id;
    }

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getBorrow_number() {
        return borrow_number;
    }

    public void setBorrow_number(int borrow_number) {
        this.borrow_number = borrow_number;
    }

    public String getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(String creat_time) {
        this.creat_time = creat_time;
    }

    @Override
    public String toString() {
        return "BorrowGoods{" +
                "unit_id=" + unit_id +
                ", goods_id=" + goods_id +
                ", borrow_number=" + borrow_number +
                ", creat_time='" + creat_time + '\'' +
                '}';
    }
}
