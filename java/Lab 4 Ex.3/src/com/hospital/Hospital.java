package com.hospital;

import javax.swing.*;

public class Hospital {

    public static void main(String[] args){
        String sN;
        int nD, nP, numD, numP;

        sN = JOptionPane.showInputDialog("Number of doctor");
        nD = Integer.parseInt(sN);
        Doctor[] doctors = new Doctor[nD];
        for (int i = 0; i < nD;i++)
            doctors[i] = new Doctor();
        Nurse nurse = new Nurse();

        sN = JOptionPane.showInputDialog("Number of patients");
        nP = Integer.parseInt(sN);
        Patient[] patients = new Patient[nP];

        for (int i=0; i < nP; i++){
            sN = JOptionPane.showInputDialog("Doctor for patient " + (i + 1));
            numD = Integer.parseInt(sN);
            patients[i] = new Patient();
            doctors[numD-1].prescribe(patients[i]);
            patients[i].setNum_doctor(numD-1);
        }
        int flag = 1;
        while (flag != 0) {
            sN = JOptionPane.showInputDialog("1.Nurse\n2.Doctor\n0Exit");
            flag = Integer.parseInt(sN);
            switch (flag) {
                case 1: {
                    sN = JOptionPane.showInputDialog("Num patient ");
                    numP = Integer.parseInt(sN);
                    nurse.execute(patients[numP]);
                    break;
                }
                case 2: {
                    sN = JOptionPane.showInputDialog("Num doctor ");
                    numD = Integer.parseInt(sN);

                    sN = JOptionPane.showInputDialog("Num patient ");
                    numP = Integer.parseInt(sN);

                    if (numD-1 != patients[numP-1].getNum_doctor())
                        doctors[numD-1].execute(patients[numP-1]);
                    else
                        JOptionPane.showMessageDialog(null, "It is not allowed");
                    break;
                }
                case 0:{
                    flag = 0;
                    break;
                }
            }
        }
    }
}
