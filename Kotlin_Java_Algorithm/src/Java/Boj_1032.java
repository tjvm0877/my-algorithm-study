package Java;

import java.util.Scanner;

public class Boj_1032 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        String[] arr = new String[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.next();
        }

        boolean tf;
        for(int i=0;i<arr[0].length();i++){
            tf = true;
            for(int j=0;j<n-1;j++){
                if(arr[j].charAt(i) != arr[j+1].charAt(i)){
                    tf = false;
                    break;
                }

            }
            if(tf) {
                System.out.print(arr[0].charAt(i));
            }else{
                System.out.print("?");
            }
        }
    }
}
