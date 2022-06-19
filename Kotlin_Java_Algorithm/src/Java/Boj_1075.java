package Java;

import java.util.Scanner;

public class Boj_1075 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int f = sc.nextInt();
        sc.close();
        int temp = (n / 100) * 100;
        if (temp / f != 0) {
            while (temp % f != 0) {
                temp++;
            }
        }
        int result = temp % 100;
        if (result < 10) {
            System.out.println("0" + result);
        } else {
            System.out.println(result);
        }
    }
}
