#include<stdio.h>
#include<math.h>
int main()
{
    int size;
    printf("Enter number of element of the array: ");
    scanf("%d", &size);

    int arr[size];

    int count = 1;
    for(int i=0;i<size;i++)
    {
        printf("\nEnter element-%d: ", count);
        scanf("%d", &arr[i]);
        count++;
    }
    count = 1;
    float sum = 0;
    for(int i=0;i<size;i++)
    {
        printf("Element %d = %d\n",count,arr[i]);
        count++;
        sum = sum  +arr[i];
    }

    float avg = sum/size;

    printf("Average of %d student is : %f", size, avg);



    return 0;
}
