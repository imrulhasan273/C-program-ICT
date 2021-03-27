#include <stdio.h>
int main()
{
    int n;
    int mul = 1;
    scanf("%d", &n);
    if(n!=0)
    {
        for(int i=1 ; i<=n ; i++ )
        {
            mul = mul * i;
        }
    }

    printf("%d", mul);

    return 0;
}
