package com.company;

import javax.swing.*;
import java.text.Collator;
import java.util.Arrays;
import java.util.Locale;

public class Main {

    public static void main(String[] args){
        String sN;
        int n;
        sN = JOptionPane.showInputDialog("Enter number of subscribes");
        n = Integer.parseInt(sN);
        Phone[] subscribe = new Phone[n];
        for(int i = 0; i < n; i++)
            subscribe[i] = new Phone();

        Arrays.sort(subscribe);

        for (int i = 0; i < n; i++){
            subscribe[i].write(Phone.text);
        }

        JOptionPane.showMessageDialog(null,Phone.text);

        String s;
        int hour, minute, second;
        s = JOptionPane.showInputDialog("Enter time of urban calls(hours)");
        hour = Integer.parseInt(s);
        s = JOptionPane.showInputDialog("Enter time of urban calls(minutes)");
        minute = Integer.parseInt(s);
        s = JOptionPane.showInputDialog("Enter time of urban calls(seconds)");
        second = Integer.parseInt(s);

        Phone.text = "Search for local calls\n\n";
        for(int i = 0; i < n; i++)
            subscribe[i].Subscribe_more_urban_calls(hour, minute, second);
        JOptionPane.showMessageDialog(null,Phone.text);

        Phone.text = "Search for subscribers who used long-distance calls\n\n";
        for(int i = 0; i < n; i++)
            subscribe[i].Subscribe_used_long_distance_calls();
        JOptionPane.showMessageDialog(null,Phone.text);
    }

    public static class Phone implements Comparable{
        private static String text = "";
        private int id;
        private String name;
        private String surname;
        private String address;
        private int num_credit_card;
        private int debit;
        private int credit;
        private int urban_hour;
        private int urban_minute;
        private int urban_second;
        private String long_distance;

        public Phone() {
            String s;
            s = JOptionPane.showInputDialog("Enter id*");
            id = Integer.parseInt(s);
            surname = JOptionPane.showInputDialog("Enter surname*");
            name = JOptionPane.showInputDialog("Enter name");
            address = JOptionPane.showInputDialog("Enter address");
            s = JOptionPane.showInputDialog("Enter number of credit card*");
            num_credit_card = Integer.parseInt(s);
            s = JOptionPane.showInputDialog("Enter debit*");
            debit = Integer.parseInt(s);
            s = JOptionPane.showInputDialog("Enter credit*");
            credit = Integer.parseInt(s);
            s = JOptionPane.showInputDialog("Enter time of urban calls(hours)*");
            urban_hour = Integer.parseInt(s);
            s = JOptionPane.showInputDialog("Enter time of urban calls(minutes)*");
            urban_minute = Integer.parseInt(s);
            s = JOptionPane.showInputDialog("Enter time of urban calls(seconds)*");
            urban_second = Integer.parseInt(s);
            long_distance = JOptionPane.showInputDialog("Enter time of long distance calls(h:m:s)*");
        }

        public void setAddress(String address) {
            this.address = address;
        }

        public void setDebit(int debit) {
            this.debit = debit;
        }

        public void setCredit(int credit) {
            this.credit = credit;
        }

        public void Subscribe_more_urban_calls(int hour, int minute, int second){
            if (urban_hour > hour)
                write(text);
            else if (urban_minute > minute && urban_hour == hour)
                write(text);
            else if (urban_second > second && urban_hour == hour && urban_minute == minute)
                write(text);
        }

        public void Subscribe_used_long_distance_calls(){
            if (!long_distance.equals("00:00:00"))
                write(text);
        }

        public int compareTo(Object obj){
            Collator collator = Collator.getInstance(new Locale("en", "US"));
            Phone tmp = (Phone)obj;
            int com;
            com = collator.compare(this.surname, tmp.surname);
            if (com < 0)
                return -1;
            else if (com == 0)
                return 0;
            else
                return 1;
        }

        public void write(String text) {
            text = text + "id: " + id + "\n";
            text = text + "Surname: " + surname + "\n";
            text = text + "Name: " + name + "\n";
            text = text + "Address: " + address + "\n";
            text = text + "Number of credit card: " + num_credit_card + "\n";
            text = text + "Debit: " + debit + "\n";
            text = text + "Credit: " + credit + "\n";
            text = text + "Time of urban calls: " + urban_hour + ":" + urban_minute + ":" + urban_second + "\n";
            text = text + "Time of long distance calls: " + long_distance + "\n\n";
            Phone.text = text;
        }
    }
}
