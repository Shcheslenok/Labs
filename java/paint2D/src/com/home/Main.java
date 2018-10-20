package com.home;

import javax.swing.*;
import java.awt.*;

public class Main extends JPanel{
    public void paintComponent(Graphics g){
        Graphics2D g2d = (Graphics2D) g;

        int red = (int) (Math.random() * 255);
        int blue = (int)(Math.random() * 255);
        int green = (int) (Math.random() * 255);
        Color startColor = new Color(red, blue, green);

        red = (int) (Math.random() * 255);
        blue = (int)(Math.random() * 255);
        green = (int) (Math.random() * 255);
        Color endColor = new Color(red, blue, green);

        GradientPaint gradient = new GradientPaint(70, 70, startColor, 150, 150, endColor);
        g2d.setPaint(gradient);
        g2d.fillOval(70, 70, 100, 100);
    }

    public static void main(String[] args) {
        Main png = new Main();
	    JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        frame.getContentPane().add(png);
        frame.setSize(500, 500);
        frame.setVisible(true);
    }
}
