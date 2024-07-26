
import java.util.Scanner;

public class amsrtongnum {
    public static int count(int n){
    int count = 0;
    while(n>0){
        n/=10;
        count++;
    }
      return count;
    }
    public static int pow(int base, int exponent){
        int pow=1;
        for(int i=1;i<=exponent;i++){
            pow=pow*base;
        }
        return pow;
 
   }
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Enter the number:");
        int n = s.nextInt();
        int m = n;
        int rem = 0;
        int sum = 0;
        int exponent = count(n);
        while(n>0){
            rem =n %10;
            sum=sum + pow(rem , exponent);
            n/=10;


        }
        System.out.println(sum==m ? "Armstrong number":"Not armstrong number");


   }
}
