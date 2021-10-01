import java.util.Scanner;
public class saddlePoint {
    public static void main(String[] args){
    int n,m;
    Scanner obj=new Scanner(System.in);
    System.out.println("Enter size of row and column : ");
    n=obj.nextInt();
    m=obj.nextInt();
    int[][] arr=new int[n][m];
    int i,j;
    for(i=0;i<n;i++)
    {
        for(j=0;j<m;j++)
        {
            arr[i][j]=obj.nextInt();
        }
    }
    System.out.print("Saddle point : ");
    for(i=0;i<n;i++)
    { 
        for(j=0;j<m;j++)
        {
        int row_min=min(arr,i,m);
        int column_max=max(arr,j,n);

        if(row_min==arr[i][j] && column_max==arr[i][j])
        {
            System.out.print(arr[i][j]+" ");
        }
         
        }
    }

    }
  static int min(int [][] arr,int i,int m)
  {
      int min=1000;

      for(int x=0;x<m;x++)
      {
          if(min>arr[i][x])
          {
              min=arr[i][x];
          }
      }
      return min;

  }
  static int max(int [][] arr,int i,int n)
  {
      int max=-123;

      for(int x=0;x<n;x++)
      {
          if(max<arr[x][i])
          {
              max=arr[x][i];
          }
      }
      return max;

  }

    
}
