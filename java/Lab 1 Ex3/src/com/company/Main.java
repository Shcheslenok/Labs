package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner i = new Scanner(System.in);
        int n = i.nextInt();
        float a[] = new float[n];
        for(int k=0; k<n; k++){
            a[k] = i.nextFloat();
        }
        for(int k=0; k<n; k++){
            if(a[k] % 3 == 0)
                    System.out.print(a[k] + " ");
        }
        System.out.println();
        for(int k=0; k<n; k++){
            if(a[k] % 9 == 0)
                System.out.print(a[k] + " ");
        }
    }
}
