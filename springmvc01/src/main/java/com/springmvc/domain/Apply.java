package com.springmvc.domain;

public class Apply {

    private int apply_id;
    private int target_id;
    private int unit_id;
    private String borrow_time;
    private String return_time;
    private String apply_do;
    private String Createform_time;

    public int getApply_id() {
        return apply_id;
    }

    public void setApply_id(int apply_id) {
        this.apply_id = apply_id;
    }

    public int getTarget_id() {
        return target_id;
    }

    public void setTarget_id(int target_id) {
        this.target_id = target_id;
    }

    public int getUnit_id() {
        return unit_id;
    }

    public void setUnit_id(int unit_id) {
        this.unit_id = unit_id;
    }

    public String getBorrow_time() {
        return borrow_time;
    }

    public void setBorrow_time(String borrow_time) {
        this.borrow_time = borrow_time;
    }

    public String getReturn_time() {
        return return_time;
    }

    public void setReturn_time(String return_time) {
        this.return_time = return_time;
    }

    public String getApply_do() {
        return apply_do;
    }

    public void setApply_do(String apply_do) {
        this.apply_do = apply_do;
    }

    public String getCreateform_time() {
        return Createform_time;
    }

    public void setCreateform_time(String createform_time) {
        Createform_time = createform_time;
    }

    @Override
    public String toString() {
        return "Apply{" +
                "apply_id=" + apply_id +
                ", target_id=" + target_id +
                ", unit_id=" + unit_id +
                ", borrow_time='" + borrow_time + '\'' +
                ", return_time='" + return_time + '\'' +
                ", apply_do='" + apply_do + '\'' +
                ", Createform_time='" + Createform_time + '\'' +
                '}';
    }
}
