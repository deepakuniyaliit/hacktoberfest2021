package bmical;

import java.util.Scanner;

public class BMICal {

   public static void main(String args[]) {
      Scanner obj = new Scanner(System.in);
      
      System.out.print("Input Your height in meters(m): ");
      double H = obj.nextDouble();
      System.out.print("\nInput Your weight in kilogram(kg): ");
      double W = obj.nextDouble();
      double BMI = W / (H * H);
      System.out.print("\nYour Body Mass Index (BMI) is " + BMI + " kg/m2");
   }
}
