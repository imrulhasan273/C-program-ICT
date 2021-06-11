#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a,b,c;
    cin>>a>>b>>c;
    if ((a==0 || a==1) && (b==0 || b==1) && (c==0 || c==1))
    {
        int countA=0;
        int countB=0;
        int countC=0;

        long long s;
        cin>>s;
        if (s>=0 && s <=1000000)
        {
            int p1[s];
            int p2[s];
            for(int i=0;i<s;i++)
            {
                cin>>p1[i]>>p2[i];
                if(p1[i]>=1 && p2[i]<=3 && p1[i]!=p2[i])
                {
                    if((p1[i]==1 && p2[i]==2) || (p1[i]==2 && p2[i]==1 ))
                    {
                        //cout<<p1[i]<<p2[i];
                        swap(a,b);
                        if(b==1)
                        {
                            countB++;
                        }
                        else if(a==1)
                        {
                            countA++;
                        }
                    }
                    else if((p1[i]==1 && p2[i]==3) || p1[i]==3 && p2[i]==1)
                    {
                        //cout<<p1[i]<<p2[i];
                        swap(a,c);
                        if(c==1)
                        {
                            countC++;
                        }
                        else if(a==1)
                        {
                            countA++;
                        }
                    }
                    else if((p1[i]==2 && p2[i]==3) || (p1[i]==3 && p2[i]==2))
                    {
                        //cout<<p1[i]<<p2[i];
                        swap(b,c);
                        if(c==1)
                        {
                            countC++;
                        }
                        else if(b==1)
                        {
                            countB++;
                        }
                    }
                    //cout<<a<<" "<<b<<" "<<c;
                    //cout<<endl;
                }
            }
        }

        //cout<<a<<" "<<b<<" "<<c;
        cout<<countA<<" "<<countB<<" "<<countC<<endl;
    }


    return 0;
}
