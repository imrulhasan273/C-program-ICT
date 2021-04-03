# **Problems in C** 

---
---

- Sample 2D Array input and Output.

```c
#include<stdio.h>
int main()
{
    int rowSize;
    int colSize;

    scanf("%d%d", &rowSize, &colSize);

    int arr[rowSize][colSize];

    for(int row=0;row<rowSize;row++)
    {
        for(int col=0;col<colSize;col++)
        {
            printf("arr[%d][%d] : ", row, col);
            scanf("%d", &arr[row][col]);
        }
    }

    printf("\n\n\n\n");

    for(int row=0;row<rowSize;row++)
    {
        for(int col=0;col<colSize;col++)
        {
            printf("arr[%d][%d] : ", row, col);
            printf("%d\n", arr[row][col]);
        }
    }

    return 0;
}
```

---


1. C program to accept a matrix of order M*N and find its transpose.

```c
/**
1. C program to accept a matrix of order M*N and find its transpose.
**/
#include<stdio.h>
int main()
{
    int rowSize;
    int colSize;

    scanf("%d%d", &rowSize, &colSize);

    int arr[rowSize][colSize];

    for(int row=0;row<rowSize;row++)
    {
        for(int col=0;col<colSize;col++)
        {
            printf("arr[%d][%d] : ", row, col);
            scanf("%d", &arr[row][col]);
        }
    }

    printf("\n\n\n\n");

    printf("The Given Matrix: \n");
    for(int row=0;row<rowSize;row++)
    {
        for(int col=0;col<colSize;col++)
        {
            printf("%d ", arr[row][col]);
        }
        printf("\n");
    }

    printf("\n\n\n\n");

    printf("Transpose Matrix: \n");


    for(int row=0;row<rowSize;row++)
    {
        for(int col=0;col<colSize;col++)
        {
            printf("%d ", arr[col][row]);
        }
        printf("\n");
    }

    return 0;
}
```

---


2. Reverse A String

```c
/**
1. Reverse a String
**/
#include<stdio.h>
#include<string.h>
int main()
{
    char str[50];
    char rev[50];

    printf("Enter a String : ");
    scanf("%s", &str);

    int size = strlen(str);

    int k = size-1;

    for(int i=0;i<size;i++)
    {
        rev[i]=str[k];
        k--;
    }

    printf("Reverse String: %s", rev);

    return 0;
}
```

---

3. Reverse the digits of an integer number using While Loop

```c
/**
    Reverse the digits of an integer number using While Loop
**/
#include<stdio.h>
int main()
{
    int n, mod, div;
    printf("Enter an Integer: ");
    scanf("%d", &n);

    printf("Reverse of %d is : ", n);
    while(n>0)
    {
        mod = n%10;
        printf("%d", mod);
        n = n / 10;
    }

    return 0;
}
```

---

4. Factorial using For Loop

```c
/**
    Factorial using For Loop
**/
#include<stdio.h>
int main()
{
    int n;

    scanf("%d", &n);

    int mul = 1;

    for(int i=1;i<=n;i++)
    {
        mul = mul * i;
    }

    printf("Factorial of %d is %d",n, mul);

    return 0;
}
```

---

5. Factorial using For Recurson

```c
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
```