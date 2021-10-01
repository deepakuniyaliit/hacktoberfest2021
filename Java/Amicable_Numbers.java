import java.util.Scanner;
public class Amicable_Numbers {
	public static void main(String [] args) {
		Scanner obj=new Scanner(System.in);
		int a,b;
		a=obj.nextInt();
		b=obj.nextInt();
		int sum1=0,sum2=0;
		int i;
		for(i=1;i<a;i++)
		{
			if(a%i==0)
			{
				sum1+=i;
			}
		}
		for(i=1;i<b;i++)
		{
			if(b%i==0)
			{
				sum2+=i;
			}
		}
		if(sum1==b && sum2==a)
		{
			System.out.println("Amicable");
		}
		else {
			System.out.println("Not Amicable");
		}
		obj.close();
	}

}