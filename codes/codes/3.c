/**
    Factorial using For Recurson
**/
#include<stdio.h>
int factorial(int m) //get using m
{
    int fact = 1;
    if(m==1 || m==0)
    {
        return fact;
    }
    else
    {
        fact = m * factorial(m-1);
        return fact;
    }
}
int main()
{
    int n;
    scanf("%d", &n);

    int result = factorial(n); //send using n

    printf("%d", result);

    return 0;
}

