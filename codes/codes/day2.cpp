#include<stdio.h>
#include<conio.h>
int main()
{

    char name[30];

    gets(name); //dhaka  ---> dhaka'\0' ----> 0:d, 1:h, 2:a, 3:k, 4:a, 5:'\0'

    for(int i=0;name[i]!='\0';i++)
    {
        printf("%c\n",name[i]);
    }

    return 0;
}
