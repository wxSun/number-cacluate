#include <stdio.h>
int main()
{



    return 0;
}






void hilbert(double *p,int n)
{
  int i=0; int j=0;//Iterator initialization
  *p= malloc ((n*n) *sizeof(double));//Dynamic memory opening
  for(i=0;i<n;i++)
      for(j=0;j<n;j++)
        (*(P+i)+j)=1/i+j;//Matrix element assignment
}
