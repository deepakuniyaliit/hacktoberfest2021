#include<iostream>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int data;
    cin >> data;
    int* arr = new int[n];
    for(int i = 0 ; i < n; i++){
        cin>>arr[i];
    }
    int low = 0;
    int high = n-1;
    while (low<=high)
    {
        int mid = (low + high)/2;
        if(arr[mid] < data)
        {
            low = mid + 1;
        }
        else if(arr[mid] < data)
        {
            high = mid - 1;
        }
        else
        {
             cout << mid;
             return 0;
        }
    }
    cout << "-1";
}