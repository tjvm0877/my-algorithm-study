package Java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Boj_10818 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer stN = new StringTokenizer(br.readLine());

        int n = Integer.parseInt(stN.nextToken());

        StringTokenizer stA = new StringTokenizer(br.readLine());
        int numArr[] = new int[n];

        for (int i = 0; i < n; i++) {
            numArr[i] = Integer.parseInt(stA.nextToken());
        }

        Arrays.sort(numArr);

        System.out.println(String.format(("%d %d"), numArr[0], numArr[n - 1]));
    }
}
