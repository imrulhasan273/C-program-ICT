/**
    1^5+2^5+....+n^5
**/
#include<stdio.h>
#include<math.h>
int main()
{
    int n;
    scanf("%d", &n);

    float sum = 0.0;

    for(int i=1;i<=n;i++)
    {
        //sum = sum + i*i*i*i*i;
        sum = sum + pow(i,5);
    }

    printf("%f", sum);

    return 0;
}
