#include <stdio.h>
int main()
{
  void hilbert(double *p,int n);
  double a[]={0};

  hilbert(a[],4);


    return 0;
}






void hilbert(double p[],int n)
{
  int i=0; int j=0;//Iterator initialization
  for(i=0;i<n;i++)
      for(j=0;j<n;j++){
          p[i][j]=1/i+j;//Matrix element assignment
          printf("%f\n",p[i][j] );
      }
return;

}
