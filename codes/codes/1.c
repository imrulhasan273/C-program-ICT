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
