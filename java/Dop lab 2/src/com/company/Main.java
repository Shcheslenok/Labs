package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        int n;
        int sum=0,prod=1;
        String s;

        s = JOptionPane.showInputDialog("Enter n");
        n = Integer.parseInt(s);

        int[][] M = new int[n][n];
        for(int i=0;i<n;i++)
            for(int j=0;j<n;j++)
                M[i][j]= (int) (Math.random() * 9 + 1);

        for(int i=0;i<n;i++) {
            for (int j = 0; j < n; j++)
                System.out.print(M[i][j] + " ");
            System.out.println();
        }

        for(int j=n-1;j>=n/2;j--)
            for(int i=n-1-j;i<=j;i++)
            {
                sum+=M[i][j];
                prod*=M[i][j];
            }
        System.out.println("Sum: "+sum + "\nProduct: " +prod);

    }
}
