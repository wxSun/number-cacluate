 #include <stdio.h>
 #include <math.h>


 int main {
            double main_func(double x);
            double result (double left,double right, double delta);





return 0;
}






double main_func(double x)
{
    return(1.0/3*poW(x,3)-pow(x,2)+4*x-4);
}



/******************************************************************************
FUNCTION NAME :    double  dxsqz (double a[], int n,double x)

ARGUMENTS :

ARGUMENT    TYPE    I/O     DESCRIPTION             *
-------     ----    ---     -----------             *
left       double    I      The endpoint lvalue     *
right      double    I      The endpoint rvalue     *
delta      double    I      maximum error           *

RETURN :

ARGUMENT    TYPE    I/O     DESCRIPTION             *
-------     ----    ---     -----------             *
out         double   O      The calculation results *


change log: Hsinwang   2018.9.26   created  *
*******************************************************************************/

double result (double left,double right, double delta)
{

    double middle = ( left + right ) / 2;

        while ( abs(main_func(middle))>=delta )
              {
                        if ( main_func(left) > main_func(middle)) {
                                      left = middle ;
                           }else {
                                      right = middle ;
                                 }
              double middle = ( left + right ) / 2;
              }
    return middle;
}
