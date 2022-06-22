package Java;

import java.util.Scanner;

public class Boj_1259 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean check = true;

        while (check == true) {
            String t = sc.next();
            if (t.equals("0")) {
                check = false;
            } else {
                String Rt = "";
                for (int i = t.length() - 1; i >= 0; i--) {
                    Rt += t.charAt(i);
                }
                if (t.equals(Rt)) {
                    System.out.println("yes");
                } else {
                    System.out.println("no");
                }
            }
        }
    }
}
