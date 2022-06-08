package Java;

import java.util.Scanner;

public class Boj_2798 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String preInput = sc.nextLine();
        String[] condition = preInput.split(" ");

        int N = Integer.parseInt(condition[0]);
        int M = Integer.parseInt(condition[1]);

        int[] numArr = new int[N];
        for (int i = 0; i < N; i++) {
            numArr[i] = Integer.parseInt(sc.next());
        }
        sc.close();

        int result = 0;

        for (int i = 0; i < numArr.length; i++) {
            for (int j = 0; j < numArr.length; j++) {
                if (i != j) {
                    for (int k = 0; k < numArr.length; k++) {
                        if (i != k && j != k) {
                            int sum = numArr[i] + numArr[j] + numArr[k];
                            if (sum <= M && sum > result) {
                                result = sum;
                            }
                        }
                    }
                }
            }
        }
        System.out.println(result);
    }
}
