package Java;

public class Boj_4673 {

    public static void main(String[] args) {
        boolean[] result = new boolean[10001];

        for (int i = 1; i < 10001; i++) {
            int n = check(i);

            if (n < 10001) {
                result[n] = true;
            }
        }

        for (int i = 1; i < result.length-1; i++) {
            if (!result[i]) {
                System.out.println(i);
            }
        }
    }

    public static int check(int num) {
        int sum = num;

        while (num != 0) {
            sum = sum + (num % 10);
            num = num / 10;
        }

        return sum;
    }
}
