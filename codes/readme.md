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

## Start Pattern

```c
#include <stdio.h>
int main()
{
    int i,j,k,l,m,n;

    scanf("%d",&n);
    
    for(i=1;i<=n;i++)
    {
        for(j=1;j<=n-i;j++)
        {
            printf(" ");
        }
        for(k=1;k<=i;k++)
        {
            printf("*");
        }
        printf("\n");  
    }
      
    return 0;
}


```

## Output

```
    *
   **
  ***
 ****
*****
```


## Star Pattern

```c
#include <stdio.h>
int main()
{
    int i,j,k,l,m,n;

    scanf("%d",&n);
    
    for(i=1;i<=n;i++)
    {
        for(j=1;j<=n-i;j++)
        {
            printf(" ");
        }
        for(k=1;k<=i;k++)
        {
            printf("*");
        }
        for(k=1;k<=i-1;k++)
        {
            printf("*");
        }
        printf("\n");  
    }
        
    return 0;
}
```

## Output

```
    *
   ***
  *****
 *******
*********
```


# While Loop

## 1+2+....+n

```c
#include <stdio.h>
int main()
{
    
    int n;
    scanf("%d", &n);
    int sum=0;
    int i=1;
    while(i<=n)
    {
        sum = sum+i;
        i++;
    }
    
    printf("%d", sum);
      
    return 0;
}
```


## 1*1 + 2*2 + 3*3 + 4*4 +    +n*n

```c
#include <stdio.h>
int main()
{
    
    int n;
    scanf("%d", &n);
    int sum=0;
    int i;
    for(i=1;i<=n;i++)
    {
        sum = sum+i*i;
    }
    
    printf("%d", sum);
    
   
    return 0;
}
```

## Break

```c
#include <stdio.h>
int main()
{
    
    int n;
    scanf("%d", &n);
    int sum=0;
    int i;
    for(i=1;i<=n;i++)
    {
        if(i==5)
        {
            break;
        }
        printf("%d\n",i);
    }
    

   
    return 0;
}

```


## Continue

```c
#include <stdio.h>
int main()
{
    
    int n;
    scanf("%d", &n);
    int sum=0;
    int i;
    for(i=1;i<=n;i++)
    {
        if(i==5)
        {
            continue;
        }
        printf("%d\n",i);
    }
    

   
    return 0;
}
```


# While Loop

## Print A to Z

```c
#include <stdio.h>

int main()
{
    
    char ch = 'A';

    while(ch<='Z')
    {
        printf("%c", ch);
        
        ch++;
    }
    
    return 0;
}
```



```c
#include <stdio.h>

int main()
{
    
    for(char ch = 'A';  ch<='Z' ;  ch++ )
    {
        printf("%c", ch);
    }
    
    return 0;
}
```


## LCM

```c
#include <stdio.h>

int main()
{
    
    int a, b;
    int max;
    
    scanf("%d%d", &a, &b);
    
    if(a>b)
    {
        max = a;
    }
    else
    {
        max = b;
    }
    
    
    while(1)
    {
        if(max%a==0 && max%b==0)
        {
            printf("%d is LCM", max);
            break;
        }
        max++;
    }
    
    
    return 0;
}
```

# GCD

```c
#include <stdio.h>

int main()
{
    
    int a, b;
    int gcd = 1;
    
    scanf("%d%d", &a, &b);
    
    for(int i = 1 ; (i<=a && i<=b) ; i++)
    {
        if((a%i == 0) && (b%i == 0))
        {
            gcd = i;
        }
    }
    
    printf("%d", gcd);

    
    return 0;
}
```


## Factorial

```c
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
```


## Prime 

```c
#include <stdio.h>

int main()
{
    
    int n;
    int flag=1;  //initially ---> prime
    
    scanf("%d", &n);
    
    for(int i=2;i<n;i++)
    {
        if(n%i==0)
        {
            flag = 0;  // not prime
            break;
        }
    }
    
    if(flag==1)
    {
        printf("Prime");
    }
    else
    {
        printf("Not Prime");
    }
    
    return 0;
}
```

# Prime num checking upto n

```c
#include <stdio.h>
int main()
{
    // int n =50;
    int n;
    
    scanf("%d", &n);

    int i; 
    int j=2;
    while(j<=n)
    {
        int flag = 1;           //initially prime
        for(i=2; i<j; i++)
        {
           if(j%i==0)
           {
               flag=0;
               break;
           }
        }
        
        if(flag==1)
        {
            printf("%d is Prime\n",j);
        }
        else
        {
            printf("%d is not Prime\n",j);
        }
        
        j++;
    }
    return 0;
}
```


# **Fibonacci**

---

```c
#include <stdio.h>
int main()
{
    int n;
    scanf("%d",&n);
    
    int prev_1=0;
    int prev=1;
    
    int curr=0;

    printf("%d ",prev_1);
    printf("%d ",prev);
    
    
    while(curr<=n)
    {
        curr = prev+prev_1;
        printf("%d ", curr);
        
        prev_1=prev;
        prev = curr;
    }

    return 0;
}
```


# Armstrong Number

```c
#include <stdio.h>
int main()
{
    int n;
    int lastD;
    
    scanf("%d",&n);
    int num = n;
    
    int sum = 0;
    
    while(n>0)
    {
        lastD = n % 10;
        
        sum = sum + lastD*lastD*lastD;
        
        n = n / 10;
    }
    
    if(num==sum)
    {
        printf("%d is Armstrong Number.",num);
    }
    else
    {
        printf("%d is not Armstrong Number.",num);
    }
    
    

    return 0;
}
```