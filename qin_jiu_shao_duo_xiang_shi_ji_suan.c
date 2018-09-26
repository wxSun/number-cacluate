
/*

# include <stdio.h>

  double dxsqz  (double a[], int n,double x);

  int main(void )
{

 double  m[4]= {1.655, 2.5, 3.33, 4.0};
 double p=dxsqz (m,4,4.05);
 printf("%lf\n", p);
 return 0;
}

*/


/******************************************************************************
FUNCTION NAME :    double  dxsqz (double a[], int n,double x)

ARGUMENTS :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
a[]        double    I      多项式系数     *
n          int       I      多项式阶数     *
x          double    I      待求值         *

RETURN :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
out         double   O      多项式的值     *


change log: Hsinwang   2018.9.20   created  *
                       2018.9.26   update   *
*******************************************************************************/



	double  dxsqz (double a[], int n,double x)
 {
     int count=0;   // 计数器
     double out=a[n-1]; //  输出值，结果保存

        for (count=1;count<(n-1);count++)
            {
             out=a[n-1-count]+(out*x);//迭代计算过程
            }
    return out;
 }
