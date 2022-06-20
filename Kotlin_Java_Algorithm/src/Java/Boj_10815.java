package Java;

import java.util.Arrays;
import java.util.Scanner;

public class Boj_10815 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int[] cardArr = new int[n];
        for (int i = 0; i < n; i++) {
            cardArr[i] = sc.nextInt();
        }
        Arrays.sort(cardArr);

        int m = sc.nextInt();

        for (int i = 0; i < m; i++) {
            int num = sc.nextInt();
            int result = binarySearch(num, cardArr);
            if (result != -1) {
                System.out.print(1 + " ");
            } else {
                System.out.print(0 + " ");
            }
        }
    }

    public static int binarySearch(int target, int[] arr) {
        int left = 0;
        int right = arr.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;
            if (arr[mid] < target) {
                left = mid + 1;
            } else if (arr[mid] > target) {
                right = mid - 1;
            } else {
                return mid;
            }
        }
        return -1;
    }
}
