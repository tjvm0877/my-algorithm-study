package Java;

import java.util.Scanner;

public class Boj_2920 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int[] arr = new int[8];

        for (int i = 0; i < 8; i++) {
            arr[i] = sc.nextInt();
        }

        String output = "";
        for (int i = 0; i < 7; i++) {
            if (arr[i] == arr[i + 1] - 1) {
                output = "ascending";
            } else if (arr[i] == arr[i + 1] + 1) {
                output = "descending";
            } else {
                output = "mixed";
                break;
            }
        }

        System.out.println(output);
    }
}
