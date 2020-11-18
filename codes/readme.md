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