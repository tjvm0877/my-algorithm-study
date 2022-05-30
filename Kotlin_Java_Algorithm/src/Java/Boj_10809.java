package Java;

import java.util.Scanner;

public class Boj_10809 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = sc.next();
        sc.close();

        int ascii[] = new int[26];
        for (int i = 0; i < ascii.length; i++) {
            ascii[i] = -1;
        }

        for (int i = 0; i < str.length(); i++) {
            int a = str.charAt(i);
            int loc = a - 97;
            if (ascii[loc] == -1) {
                ascii[loc] = i;
            }
        }

        for (int val : ascii) {
            System.out.print(val + " ");
        }
    }
}
