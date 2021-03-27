#include<stdio.h>
#define pi 3.1416
int main()
{

    //const float pi = 3.1416;
    float r;
    float Area;

    scanf("%f", &r);
    Area = pi*(r*r);

    printf("%f", Area);

    return 0;
}
