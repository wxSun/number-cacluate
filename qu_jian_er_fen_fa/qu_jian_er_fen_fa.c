# #include <stdio.h>

void qujian( double *left, double *right,int n);
double main_func(double x);
double result (double left,double right, double delta);



 int main {






return 0;
}



/******************************************************************************
FUNCTION NAME :   void qujian( double *left, double *right,int n)

ARGUMENTS :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
*left       double   I      区间左端点     *
*right      double   I      区间右端点     *
n           int      I      精度分段数     *

RETURN :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
            void     O                    *


change log: Hsinwang   2018.9.26   created  *
*******************************************************************************/

void qujian( double *left, double *right,int n)
{

  int count = 0;
  double step = 0.0;

  step= (((*right) - (*left))/n);

        for (count = (*left); count <= (*right); count++) {
             if ((!(main_func((*left) + (count - (*left) * step ))) * (main_func((*left) + (count + 1 - (*left) * step ))) > 0) ) {
                 (*left) = ((*left) + (count - (*left) * step ));
                 (*right) = ((*left)+(count + 1 - (*left) * step ));
             }
        }
}



double main_func(double x)
{




}



/******************************************************************************
FUNCTION NAME :    double  dxsqz (double a[], int n,double x)

ARGUMENTS :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
left       double    I      左端点数值     *
right      double    I      右端点数值     *
delta      double    I      最大误差       *

RETURN :

ARGUMENT    TYPE    I/O     DESCRIPTION   *
-------     ----    ---     -----------   *
out         double   O      计算结果       *


change log: Hsinwang   2018.9.26   created  *
*******************************************************************************/

double result (double left,double right, double delta)
{
    double out = 0;
    double middle = 0;

    double middle = ( left + right ) / 2;

        while ( main_func(middle)>delta )
              {
                        if ( main_func(left) > main_func(middle)) {
                                      left = middle ;
                           }else {
                                      right = middle ;
                                 }
              }
    out = middle ;
    return out;
}
