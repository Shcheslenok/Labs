package com.Text;

import javax.swing.*;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Text {

    public static void main (String[] args){
        int count = 0;
        try {
            BufferedReader br =
                    new BufferedReader(new FileReader("src\\com\\Text\\Text.java"));
            String s = "";
            String comp = JOptionPane.showInputDialog("Enter word");
            while((s = br.readLine()) != null){
                String[] ms = s.split();
                for ( String res : ms)
                    if(res.equals(comp))
                        count++;

            }
            s = "" + count;
            JOptionPane.showMessageDialog(null, s);
            br.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }

    }
}
