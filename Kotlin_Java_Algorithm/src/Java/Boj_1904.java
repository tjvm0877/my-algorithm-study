package Java;

import java.util.Scanner;

public class Boj_1904 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        sc.close();

        int a = 1;
        int b = 2;
        if (n == 1) {
            System.out.println(1);
        } else if (n == 2) {
            System.out.println(2);
        } else {
            int result = 0;
            for (int i = 3; i <= n; i++) {
                result = (a + b) % 15746;
                a = b % 15746;
                b = result;
            }
            System.out.println(result);
        }
    }
}
