// BINARY SEARCH IMPLEMENTATION

#include<iostream>
using namespace std;

int binarySearchFunction(int arr[] , int size , int searchElement)
{
    int l=0,h=size-1;
    while(l<=h)
    {
        int mid = l+(h-l)/2;
        if(arr[mid] == searchElement)
        {
            return mid;
        }
        else
        {
            if(arr[mid] > searchElement)
                h=mid-1;
            else
                l=mid+1;
        }
    }
    return -1;
}

int main()
{
    int size;
    cin>>size;
    int arr[size];
    for(int i=0;i<size;i++)
    {
        cin>>arr[i];
    }
    int searchElement;
    cin>>searchElement;
    int x = binarySearchFunction(arr , size , searchElement);
    if(x!=-1)
        cout<<"Element found at index "<<x;
    else
        cout<<"Element not found";
    return 0;
}