#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a,b,c;
    cin>>a>>b>>c;
    int countA=0;
    int countB=0;
    int countC=0;

    long long s;
    cin>>s;
    if (s>=0 && s <=1000000)
    {
        //int p1[s];
        //int p2[s];
        for(int i=0;i<s;i++)
        {
            int p1,p2;
            cin>>p1>>p2;
            if(p1>=1 && p2<=3 && p1!=p2)
            {
                if(p1==1)
                {
                    countA++;
                }
            }
        }
    }

    //cout<<a<<" "<<b<<" "<<c;
    cout<<countA<<" "<<countB<<" "<<countC;

    return 0;
}

