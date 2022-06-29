package Java;

import java.util.Scanner;

public class Boj_9461 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        long[] DP = new long[101];
        int T = sc.nextInt();

        DP[0] = 1;
        DP[1] = 1;
        DP[2] = 1;

        for (int i = 3; i < DP.length; i++) {
            DP[i] = DP[i - 2] + DP[i - 3];
        }

        for (int i = 0; i < T; i++) {
            int n = sc.nextInt();
            System.out.println(DP[n-1]);
        }
    }
}
