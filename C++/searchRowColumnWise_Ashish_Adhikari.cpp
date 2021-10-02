#include<iostream>
using namespace std;
int main()
{
    int r,c,x;
    cin>>r>>c;
    int arr[r][c];
    for(int i=0;i<r;i++)
    {
        for(int j=0;j<c;j++)
        {
            cin>>arr[i][j];
        }
    }
    cin>>x;
    int i=0,j=c-1;
    while(i<r && j>=0)
    {
        if(arr[i][j]==x)
        {
            cout<<"element found at index "<<i<<" "<<j;
            return 1;
        }
        else
        if(arr[i][j]>x)
            j--;
        else
            i++;
    }
    cout<<"element not found";
    return 0;
}