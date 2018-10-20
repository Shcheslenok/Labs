package com.hospital;

import javax.swing.*;

public class Doctor{

    public void prescribe(Patient obj){
        int flag;
        String s;
        s = JOptionPane.showInputDialog("the prescription\n1.Procedure\n2.Drug\n3.Operation\nExit");
        flag = Integer.parseInt(s);
        switch (flag){
            case 1:{ obj.setPrescription("Procedure"); break;}
            case 2:{ obj.setPrescription("Drug"); break;}
            case 3:{ obj.setPrescription("Operation"); break;}
        }
    }

    public void execute(Patient obj){
        obj.cure();
    }
}
