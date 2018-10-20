package com.company;

import javax.swing.*;

import static java.lang.StrictMath.abs;

public class Main {

    public static void main(String[] args) {
	    int [][] pole = new int[8][8];
        int k,g;
        int m,n;
        String s;

        s = JOptionPane.showInputDialog("Enter x1");
        k = Integer.parseInt(s);
        s = JOptionPane.showInputDialog("Enter y1");
        g = Integer.parseInt(s);
        s = JOptionPane.showInputDialog("Enter x2");
        m = Integer.parseInt(s);
        s = JOptionPane.showInputDialog("Enter y2");
        n = Integer.parseInt(s);
        if(k==m || g==n || (abs(k-m)==abs(g-n)))
            System.out.println("Possible");
        else{
            System.out.println("Impossible");
            System.out.println(k);
    }
}
