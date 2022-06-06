package Java;

import java.util.Scanner;

public class Boj_2292 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int N = sc.nextInt();
        sc.close();

        int count = 1;
        int room = 1;

        if (N == 1) {
            System.out.println(count);
        } else {
            do {
                room += (count * 6);
                count += 1;
            } while (N > room);
            System.out.println(count);
        }
    }
}
