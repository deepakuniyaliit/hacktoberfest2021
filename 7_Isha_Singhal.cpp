/* 
Write a C++ program to find the max of an array using recursion.

Sample Input: 
3
5
76 34 103 10 97
4
-10 -33 -2 -65
7
2 34 190 22 67 23 12

Sample Output:
103
-2
190

*/
#include <bits/stdc++.h>
using namespace std;

// function to return maximum element of array using recursion
int findMax(int* array, int n)
{
	//If there is single element in array, return it.
	if(n == 1) return array[0];
	/*Else return maximum of following.
    a) Last Element
    b) Value returned by recursive call for n-1 elements.*/
	return max(array[n-1], findMax(array, n-1));
}

int main()
{
	int tc;  //no. of testcases
	cin>>tc; 
	while(tc--)
	{
		int n; //size of array
		cin>>n;
		int array[n]; //declaring array of size n
		for(int i=0;i<n;i++)
		{
			cin>>array[i];
		}
		int result=findMax(array,n); //calling function findMax and storing the output in the result variable
		cout<<result<<endl;
	}
	return 0;
}

