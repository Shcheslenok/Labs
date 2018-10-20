package com.company;

import java.applet.Applet;
import java.awt.*;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

public class MyKey extends Applet implements KeyListener {

    private String msg = " ";
    private int x = 0, y = 20; // координаты вывода

    public void init() {
        /* регистрация блока прослушивания */
        addKeyListener(this);
      //  requestFocus(); // запрос фокуса ввода
    }
        // реализация всех трех методов интерфейса KeyListener

        public void keyPressed(KeyEvent e) {
            showStatus("Key Down");
        } // отображение в строке состояния
        public void keyReleased(KeyEvent e) {
            showStatus("Key Up");
        } // отображение в строке состояния
        public void keyTyped(KeyEvent e) {
            msg += e.getKeyChar();
            repaint(); // перерисовать
        }

    public void paint(Graphics g) {
        // значение клавиши в позиции вывода
        g.drawString(msg, x, y);
    }
}