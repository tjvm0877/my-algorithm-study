package Java;

import java.util.Scanner;

public class Boj_9020 {
    public static boolean[] prime = new boolean[10001];

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        get_Prime();
        int T = sc.nextInt();

        while (T-- > 0) {
            int n = sc.nextInt();
            System.out.println(n);
            int first = n / 2;
            int second = n / 2;

            while (true) {
                if (!prime[first] && !prime[second]) {
                    System.out.println(first + " " + second);
                    break;
                }
                first --;
                second ++;
            }
        }

    }

    public static void get_Prime(){
        prime[0] = prime[1] = true;

        for (int i = 2; i <= Math.sqrt(prime.length); i++) {
            if(prime[i])
                continue;
            for (int j = i * i; j < prime.length; j += i) {
                prime[j] = true;
            }
        }
    }
}
