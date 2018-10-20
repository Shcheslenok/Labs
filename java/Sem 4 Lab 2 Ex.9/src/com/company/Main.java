package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
	    float a[][];
        int col;
        int row;
        float mass[];
        String sAij;
        String sCol = JOptionPane.showInputDialog("Enter number of columns");
        col = Integer.parseInt(sCol);
        String sRow = JOptionPane.showInputDialog("Enter number of rows");
        row = Integer.parseInt(sRow);
        a = new float[row][col];
        mass = new float[col];
        for(int i=0; i<col; i++)
            mass[i] = 0;
        for(int i=0; i<row; i++)
            for (int j = 0; j < col; j++) {
                sAij = JOptionPane.showInputDialog("Enter element[" + i + "][" + j + "]");
                a[i][j] = Float.parseFloat(sAij);
        }

        for(int i=0; i<col; i++)
            for(int j=0; j<row; j++){
                mass[i] += Math.abs(a[j][i]);
            }

        float max;
        int num;
        float el;

        for(int j = 0; j < col; j++) {
            max = mass[j];
            num = j;
            for (int i = j; i < col; i++)
                if (max < mass[i]) {
                    max = mass[i];
                    num = i;
                }

            for(int i = 0; i < row; i++) {
                el = a[i][num];
                a[i][num] = a[i][j];
                a[i][j] = el;
            }
            el = mass[j];
            mass[j] = mass[num];
            mass[num] = el;
        }

        String text = "mass: \n";
        for(int i = 0; i < col; i++)
            text = text + mass[i] + " ";
        text = text + "\n";
        for(int i = 0; i < row; i++){
            text = text + a[i][0] + " ";
            for(int j=1; j<col; j++)
                text = text + a[i][j] + " ";
            text = text + "\n";
        }
        JOptionPane.showMessageDialog(null, text);
    }
}
