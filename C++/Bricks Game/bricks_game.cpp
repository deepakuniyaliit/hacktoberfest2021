#include<math.h>
#include<algorithm>
#include<cstdlib>
#include<iostream>
#include<stdio.h>
#include<map>
#include<ext/hash_map>
#include<ext/hash_set>
#include<set>
#include<string>
#include<assert.h>
#include<vector>
#include<time.h>
#include<queue>
#include<deque>
#include<sstream>
#include<stack>
#include<sstream>
#define MA(a,b) ((a)>(b)?(a):(b))
#define MI(a,b) ((a)<(b)?(a):(b))
#define AB(a) (-(a)<(a)?(a):-(a))
#define X first
#define Y second
#define mp make_pair
#define pb push_back
#define pob pop_back
#define ep 0.0000000001
#define Pi 3.1415926535897932384626433832795
using namespace std;
using namespace __gnu_cxx;
const long long  MO=1000000000+7;
int i,j,n,m,k;
int a[1000000];
long long s[1000000],su[1000000];
bool f[1000000];
long long sol(int x)
{
    if (x==n+1) return 0;
    if (f[x]) return s[x];
    if (n-x<=2) return s[x]=su[x];
    f[x]=1;
    s[x]=0;
    if (x+1<=n+1)s[x]=max(s[x],su[x]-sol(x+1));
    if (x+2<=n+1)s[x]=max(s[x],su[x]-sol(x+2));
    if (x+3<=n+1)s[x]=max(s[x],su[x]-sol(x+3));
}
int main()
{
    int t;
    cin>>t;
    while (t--)
    {
        cin>>n;
        for (i=1;i<=n;i++)
            scanf("%d",&a[i]);
        for (i=n;i>=1;i--)
            su[i]=su[i+1]+a[i];
        for (i=1;i<=n;i++)
            f[i]=0;
        cout<<sol(1)<<endl;
    }
    return 0;
}
