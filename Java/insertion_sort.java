import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    // Complete the insertionSort2 function below.
   public static void insertionsort(int[] arr, int s) {
    //public static void main(String[] args) {
        //Scanner sc = new Scanner(System.in);
        for(int i=0;i<s-1;i++){
              int j = i+1;
              while(j>0){
                if(arr[j]<arr[j-1]){
                  int temp = arr[j];
                  arr[j] = arr[j-1];
                  arr[j-1] = temp;
                  j--;
                }else{
                    break;
                }
              }
              printArray(arr);
            }
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int s = sc.nextInt();
        int[] arr = new int[s];
        for(int i=0;i<s;i++){
            arr[i]=sc.nextInt(); 
        }
        insertionsort(arr,s);
    }
    
    private static void printArray(int[] ar) {
          for(int n: ar){
             System.out.print(n+" ");
          }
            System.out.println("");
       }
}
