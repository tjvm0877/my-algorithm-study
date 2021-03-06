package Java;

import java.util.Scanner;

public class Boj_2577 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int numArr[] = new int[10];

        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = sc.nextInt();
        int mul = a * b * c;

        while (mul != 0) {
            int n = mul % 10;
            numArr[n] += 1;
            mul /= 10;
        }

        for (int i = 0; i < numArr.length; i++) {
            System.out.println(numArr[i]);
        }
    }
}
