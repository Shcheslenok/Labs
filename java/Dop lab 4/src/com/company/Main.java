package com.company;

import javax.swing.*;

import static java.lang.Math.*;

public class Main {

    public static void main(String[] args) {
        int n;
        int sum=0,prod=1;
        String s;

        boolean up=false;

        s = JOptionPane.showInputDialog("Enter n");
        n = Integer.parseInt(s);

        double[][] M = new double[n][n];
        double[] R=new double[n*n];

        for(int i=0;i<n*n;i++) {
            R[i] = (random() * 9 + 1);
            System.out.format("%.2f ",R[i]);
        }
        System.out.println();

        int j=0,l=0;

        while(j<n)
        {
            if(up)
                for(int i=n-1;i>-1;i--)
                    M[i][j]=R[l++];
            else
                for(int i=0;i<n;i++)
                    M[i][j]=R[l++];
            j++;
            up=!up;
        }

        System.out.println();

        for(int i=0;i<n;i++) {
            for (int k = 0; k < n; k++)
                System.out.format("%.2f ",M[i][k]);
            System.out.println();
        }
    }
}
