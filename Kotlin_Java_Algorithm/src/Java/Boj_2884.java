package Java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.StringTokenizer;

public class Boj_2884 {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st1 = new StringTokenizer(br.readLine());
        br.close();

        int h = Integer.parseInt(st1.nextToken());
        int m = Integer.parseInt(st1.nextToken());

        if (m < 45) {
            if (h == 0) {
                h = 23;
                m += 15;
            } else {
                h -= 1;
                m += 15;
            }
        } else {
            m -= 45;
        }

        System.out.println(String.format(("%d %d"), h, m));
    }
}
