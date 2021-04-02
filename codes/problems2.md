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