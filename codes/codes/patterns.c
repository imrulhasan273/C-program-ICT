/***
    (1/1)+(1/2)+(1/3)+(1/4).......(1/n);
***/
#include<stdio.h>
int main()
{
    int n;
    float sum = 0.0;

    scanf("%d", &n);

    for(int i=1;i<=n;i++)
    {
        sum = sum + (1.0/i);
    }

    printf("%f", sum);

    return 0;
}
