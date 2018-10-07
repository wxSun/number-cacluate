/*
#include <stdio.h>
 int main(int argc, char const *argv[]) {
    long int zshf(int n,int m);
    printf("%ld \n",zshf(99,99 ));
    return 0;
}
*/




long    int zshf(int n,int m)
{
    if ((n<1)||(m<1))       return 0;   if((n==1)||(m==1))      return 1;   if(n<m)    return zshf(n,n);     if(n==m)        return (zshf(n,m-1)+1);     return (zshf(n,m-1)+zshf(n-m,m));
}
