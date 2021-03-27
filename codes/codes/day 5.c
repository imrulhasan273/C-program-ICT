/***
Surface and Volume of Sphere.
    rule:
        Surface: 4*pi*r*r;
        Volume : (4/3)*pi*r*r*r;
***/
#include<stdio.h>
int main()
{
    const float pi = 3.1416;
    float r;
    float surface, volume;

    printf("Enter the Radius of the Sphere: ");
    scanf("%f", &r);

    surface = 4*pi*r*r;
    volume  = (4.0/3.0)*pi*r*r*r;

    printf("\n\nSurface of Sphere: %f \n Volume of Sphere: %f", surface, volume);

    return 0;
}
