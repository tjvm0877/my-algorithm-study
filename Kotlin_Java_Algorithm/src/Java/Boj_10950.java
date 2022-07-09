package Java;

import java.util.Scanner;

public class Boj_10950 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int testCase = sc.nextInt();

        for (int i = 0; i < testCase; i++) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            System.out.println(a+b);
        }
    }
}
