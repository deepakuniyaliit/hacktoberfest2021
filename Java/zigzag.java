import java.util.Scanner;
public class zigzag {
	public static void main(String[] args) {
		Scanner obj=new Scanner(System.in);
		int n,i;
		System.out.println("Enter size :");
		n=obj.nextInt();
		int arr[]=new int[n];
		for(i=0;i<n;i++) {
			arr[i]=obj.nextInt();
		}
		boolean flag=true;
	    for(i=0;i<n-1;i++)
		{
			if(flag==true && arr[i]>arr[i+1]){
				 int temp=arr[i];
				arr[i]=arr[i+1];
				arr[i+1]=temp; 
				flag=false;
			}
			else if(flag==false && arr[i]<arr[i+1])
			{
				int temp=arr[i];
				arr[i]=arr[i+1];
				arr[i+1]=temp;
				flag=true;

			}
			else if(flag==true && arr[i]<arr[i+1])
			{
				flag=false;
			}
			else if(flag==false && arr[i]>arr[i+1]){
				flag=true;
			}
		}
		for(i=0;i<n;i++)
		{
			System.out.print(arr[i]+" ");
		}
		
	}

}
