package Java;


import java.util.Scanner;

public class Boj_1065 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println(funcPR(sc.nextInt()));
        sc.close();
    }

    public static int funcPR(int num) {
        int count = 0;

        if (num < 100) {
            return num;
        } else {
            count = 99;

            for (int i = 100; i <= num; i++) {
                int hun = i / 100;
                int ten = (i / 10) % 10;
                int one = i % 10;

                if ((hun - ten) == (ten - one)) {
                    count++;
                }
            }
        }

        return count;
    }
}
