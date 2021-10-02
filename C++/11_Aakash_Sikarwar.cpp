#include <iostream>
#include <conio.h>
using namespace std;
int main()
{
    int i,j,row;
    cout<<"Enter the value for row :";
    cin>>row;
    cout << "The number floyd's triangle patterns" << endl;
    for(i=1; i<=row; i++ )//loop for printing triangle
	{
        for(j=1; j<=i; j++ ){
        	if(j%2==0)
        cout<<"0";
        else
			
        cout<<"1";
    }
    cout<< endl;
    }
    getch();
}
