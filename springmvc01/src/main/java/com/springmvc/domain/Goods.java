package com.springmvc.domain;

public class Goods {

    private int goods_id;
    private int unit_id;
    private String goods_name;
    private int reservation_number;
    private int borrowed_number;
    private int rest_number;
    private int goods_total;
    private String goods_picturename;
    private String goods_picturepath;
    private String change_time;

    public int getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(int goods_id) {
        this.goods_id = goods_id;
    }

    public int getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(int unit_id) {
        this.unit_id = unit_id;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public int getReservation_number() {
        return reservation_number;
    }

    public void setReservation_number(int reservation_number) {
        this.reservation_number = reservation_number;
    }

    public int getBorrowed_number() {
        return borrowed_number;
    }

    public void setBorrowed_number(int borrowed_number) {
        this.borrowed_number = borrowed_number;
    }

    public int getRest_number() {
        return rest_number;
    }

    public void setRest_number(int rest_number) {
        this.rest_number = rest_number;
    }

    public int getGoods_total() {
        return goods_total;
    }

    public void setGoods_total(int goods_total) {
        this.goods_total = goods_total;
    }

    public String getGoods_picturename() {
        return goods_picturename;
    }

    public void setGoods_picturename(String goods_picturename) {
        this.goods_picturename = goods_picturename;
    }

    public String getGoods_picturepath() {
        return goods_picturepath;
    }

    public void setGoods_picturepath(String goods_picturepath) {
        this.goods_picturepath = goods_picturepath;
    }

    public String getChange_time() {
        return change_time;
    }

    public void setChange_time(String change_time) {
        this.change_time = change_time;
    }

    @Override
    public String toString() {
        return "goods{" +
                "goods_id=" + goods_id +
                ", unit_id=" + unit_id +
                ", goods_name='" + goods_name + '\'' +
                ", reservation_number=" + reservation_number +
                ", borrowed_number=" + borrowed_number +
                ", rest_number=" + rest_number +
                ", goods_total=" + goods_total +
                ", goods_picturename='" + goods_picturename + '\'' +
                ", goods_picturepath='" + goods_picturepath + '\'' +
                ", change_time='" + change_time + '\'' +
                '}';
    }
}
