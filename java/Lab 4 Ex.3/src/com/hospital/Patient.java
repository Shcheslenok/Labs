package com.hospital;

import javax.swing.*;

public class Patient {

    private int num_doctor;
    private String prescription;
    private boolean illness = true;

    Patient(){}

    public void setPrescription(String s){
        prescription = s;
    }
    public void setNum_doctor(int num){
        num_doctor = num;
    }
    public void cure(){
        illness = false;
        JOptionPane.showMessageDialog(null,"Patient is health");
    }
    public int getNum_doctor(){
        return num_doctor;
    }
}
