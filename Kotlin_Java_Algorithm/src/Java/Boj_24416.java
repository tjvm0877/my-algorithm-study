package Java;

import java.util.Scanner;

public class Boj_24416 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        sc.close();

        int dp = n - 2;
        int recursion = fib(n);

        System.out.println(recursion + " " + dp);
    }

    public static int fib(int n) {
        if (n == 1 || n == 2) {
            return 1;
        } else {
            return (fib(n - 1) + fib(n - 2));
        }
    }
}
