import java.util.Scanner;
public class ZerotoOne {
	public static void main(String [] args) {
		Scanner obj=new Scanner(System.in);
		System.out.print("Enter a number to replace 0 by 1 ");
		int num=obj.nextInt();
		int result=0;
		int decimal=1;
		int tnum=num;
		if(num==0) {
			result+= (decimal*1);
		}
			while(num>0) {
				if(num%10==0) {
					result+=(decimal*1);
				}
					num/=10;
					decimal*=10;
				}
	  tnum+=result;
System.out.print(tnum);
obj.close();
			}
		}


