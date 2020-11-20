# **C Program Practice**

---


# Smallest Number between 3 numbers

```c
#include <stdio.h>
int main() 
{
    int a, b, c;
    
    scanf("%d%d%d", &a, &b, &c);
    
    //if a is less than b
    if(a<b)
    {
        // we know that a is less than b
        // but we dont know weather a is less than c or not
        
        //if a is less than c
        if(a<c)
        {
            printf("%d",a);
        }
        // if c is less than a
        else if(c<a)
        {
            printf("%d",c);
        }
    }
    else if(b<a)
    {
        // we know that b is less than a
        // but we dont know weather b is less than c or not
        
        // b is less than c
        if(b<c)
        {
            printf("%d",b);
        }
        else if(c<b)
        {
            printf("%d",c);
        }
        
    }
    else if(a<c)
    {
        if(a<b)
        {
            printf("%d",a);
        }
        else if(b<a)
        {
            printf("%d",b);
        }
    }
    else if(b<c)
    {
        if(b<a)
        {
            printf("%d",b);
        }
        else if(a<b)
        {
            printf("%d",a);
        }
    }
    
    return 0;
}
```

```c
#include <stdio.h>
int main() 
{
    int a, b, c;
    
    scanf("%d%d%d", &a, &b, &c);
    
    if(a<b && a<c)
    {
        printf("%d", a);
    }
    else if(a<b && c<a)
    {
        printf("%d",c);
    }
    else if(b<c && b<a)
    {
        printf("%d",b);
    }
    else if(b<c && a<b)
    {
        printf("%d",a);
    }
    else if(c<a && c<b)
    {
        printf("%d", c);
    }
    else if(c<a && b<c)
    {
        printf("%d",b);
    }
    
    return 0;
}
```

```c
#include <stdio.h>
int main() 
{
    int a, b, c, min;
    
    scanf("%d%d%d", &a, &b, &c);
    
    min = a;
    
    if(b<min)
    {
        min = b;
    }
    if(c<min)
    {
        min = c;
    }
    
    printf("%d", min);
    
    
    return 0;
}
```


## Even Odd Checking

```c
#include <stdio.h>
int main() 
{
    int a;
    
    scanf("%d",&a);
    
    if(a%2==0)
    {
        printf("Even");
    }
    else
    {
        printf("Odd");
    }
    
    
    return 0;
}
```


```c
#include <stdio.h>
int main() 
{
    int a;
    
    scanf("%d",&a);
    
    if(a%2==1)
    {
        printf("Odd");
    }
    else
    {
        printf("Even");
    }
    
    
    return 0;
}
```

## 1+2+3+......n

```c
#include <stdio.h>
int main() 
{
    int a;
    scanf("%d", &a);
    int sum;
    
    sum = (a*(a+1)) / 2;
    
    printf("%d", sum);

    
    return 0;
}
```

## Positive/Negative/Zero

```c
#include <stdio.h>
int main() 
{
    int a;
    
    scanf("%d", &a);
    
    if(a>0)
    {
        printf("Positive");
    }
    else if(a<0)
    {
        printf("Negative");
    }
    else if(a==0)
    {
        printf("Zero");
    }
    
    return 0;
}
```


## Leap Year

```c
#include <stdio.h>
int main() 
{
    int year;
    
    scanf("%d", &year);
    
    if(year%400 == 0 || (year%100!=0 && year%4==0))
    {
        printf("%d is leap year", year);
    }
    else
    {
        printf("%d is not leap year", year);
    }
    
    return 0;
}
```


## Vowel / Consonent

```c
#include <stdio.h>
int main() 
{
    char ch;
    
    scanf("%c", &ch);
    
    if(ch=='A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U' || ch=='a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
    {
        printf("Vowel");
    }
    else
    {
        printf("Consonent");
    }
    
    return 0;
}
```

## Switch example 

```c
#include <stdio.h>
int main() 
{
    int n;
    
    
    printf("Enter number between 1 to 3: ");
    
    scanf("%d", &n);
    
    switch(n)
    {
        case 1:
            printf("Book1");
            break;
        case 2:
            printf("Book2");
            break;
        case 3:
            printf("Book 3");
            break;
        default:
            printf("Invalid Number");
    }
    
    return 0;
}
```

> Never forget to use `break` after every case.

---

---

# **FOR LOOP**

---

## 1+2+3+4+......+n

```c
#include <stdio.h>

int main()
{
    
    int n;
    int sum=0;
    
    scanf("%d", &n);
    
    int i;
    
    for(i=1 ; i<=n ; i++)
    {
        sum = sum + i;
    }
    
    printf("%d", sum);
   
    return 0;
}
```

## 1+3+5+.....+n

```c
#include <stdio.h>

int main()
{
    
    int n;
    int sum=0;
    
    scanf("%d", &n);
    
    int i;
    
    for(i=1 ; i<=n ; i=i+2)
    {
        sum = sum + i;
    }
    
    printf("%d", sum);

    
    return 0;
}

```

## 2+4+6+8+....+n

```c
#include <stdio.h>

int main()
{
    
    int n;
    int sum=0;
    
    scanf("%d", &n);
    
    int i;
    
    for(i=2 ; i<=n ; i=i+2)
    {
        sum = sum + i;
    }
    
    printf("%d", sum);

    
    
    
    
    return 0;
}
```


## 0+5+10+15+....+n

```c
#include <stdio.h>

int main()
{
    
    int n;
    int sum=0;
    
    scanf("%d", &n);
    
    int i;
    
    for(i=0 ; i<=n ; i=i+5)
    {
        sum = sum + i;
    }
    
    printf("%d", sum);


    return 0;
}

```


## Check Even upto user input

```c
#include <stdio.h>

int main()
{
    
    int n;

    scanf("%d", &n);
    
    int i;
    
    for(i=1 ; i<=n ; i++)
    {
       if(i%2==0)
       {
           printf("% is even\n",i);
       }
    }
    

    return 0;
}
```

# **Star Pattern**


```c
#include <stdio.h>

int main()
{
    int n;

    scanf("%d", &n);
    
    int i;
    int j;
    
    for(i=1 ; i<=n ; i++)
    {
       for(j=1;j<=i;j++)
       {
           printf("*");
       }
       printf("\n");
    }
    

    return 0;
}
```

### Output

```
*
**
***
****
*****
```

