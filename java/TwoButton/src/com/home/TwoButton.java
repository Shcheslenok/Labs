package com.home;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class TwoButton {
    JFrame frame;
    JLabel label;


    public static void main(String[] args) {
	// write your code here
        TwoButton gui = new TwoButton();
        gui.go();
    }

    private void go() {
        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JButton colorButton = new JButton("Change color");
        colorButton.addActionListener(new ColorListener());
        JButton labelButton = new JButton("Change label");
        labelButton.addActionListener(new LabelListener());

        label = new JLabel("I'm label");
        MyDrawPanel panel = new MyDrawPanel();

        frame.getContentPane().add(BorderLayout.CENTER, panel);
        frame.getContentPane().add(BorderLayout.SOUTH, colorButton);
        frame.getContentPane().add(BorderLayout.EAST, labelButton);
        frame.getContentPane().add(BorderLayout.WEST, label);

        frame.setSize(500, 500);
        frame.setVisible(true);
    }

    class ColorListener implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
            frame.repaint();
        }
    }

    class LabelListener implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent e) {
            label.setText("Ouch");
        }
    }

    class MyDrawPanel extends JPanel{
        @Override
        public void paintComponent(Graphics g) {
            Graphics2D g2d = (Graphics2D) g;
            int red = (int) (Math.random() * 255);
            int green = (int) (Math.random() * 255);
            int blue = (int) (Math.random() * 255);
            Color startColor = new Color(red, green, blue);

            red = (int) (Math.random() * 255);
            green = (int) (Math.random() * 255);
            blue = (int) (Math.random() * 255);
            Color endColor = new Color(red, green, blue);

            GradientPaint gradient = new GradientPaint(70, 70, startColor, 150, 150, endColor);
            g2d.setPaint(gradient);
            g2d.fillOval(70, 70, 100, 100);
        }
    }
}
