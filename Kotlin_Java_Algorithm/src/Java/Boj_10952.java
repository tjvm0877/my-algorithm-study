package Java;

import java.util.Scanner;

public class Boj_10952 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean input = true;

        while (input) {
            int a = sc.nextInt();
            int b = sc.nextInt();

            if (a == 0 && b == 0) {
                input = false;
            } else {
                System.out.println(a + b);
            }
        }
        sc.close();
    }
}
