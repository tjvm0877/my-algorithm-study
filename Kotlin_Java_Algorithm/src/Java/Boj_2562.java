package Java;

import java.util.Scanner;

public class Boj_2562 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int numArr[] = new int[9]; // 크기 9인 배열선언
        int max = 0;
        int maxLoc = 0;

        // 입력, 입력받은 값 배열에 저장
        for (int i = 0; i < numArr.length; i++) {
            numArr[i] = sc.nextInt();
        }

        // 배열을 돌아 가장 큰값, 큰값의 위치 찾기
        for (int i = 0; i < numArr.length; i++) {
            if (numArr[i] > max) {
                max = numArr[i];
                maxLoc = i;
            }
        }

        // 출력
        System.out.println(max);
        System.out.println(maxLoc + 1);
    }
}
