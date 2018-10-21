/*

#include <stdio.h>
#include <math.h>

    int main( void )
{
    double ndddf(double input , int n);
    double func (double x);
    double func_dif(double x);





    return 0;
}
*/

/*******************************************************************************
*
*FUNCTION NAME : double ndddf(double input , int n);
*
*ARGUMENTS:
*
*ARGUMENT       TYPE        I/O         DESCRIPTION           *
*--------       ----        ---         ----------            *
* input        double       I           set value
*   n          int          I           Iterations
*
*RETURNs:
*ARGUMENT       TYPE        I/O         DESCRIPTION           *
*--------       ----        ---         ----------            *
* output        double      O          The approximate zero   *
*
*DESCRIPTION :
*            Newton iteration method for the numerical solution of the function
*                                      HsinWang
*******************************************************************************/
double ndddf(double input , int n)
{
    double x[ ]={0} ;
    int count =0 ;
    double output=0.0;

    x[0] = input ;
            for (count=0;count<n;count++){
                x{count+1] = x[count] - (func(x[count]))/(func_dif(x[count]));
            }

    output = x[count];
    return output;
}



double func (double x)
{
    return( pow( x,3) + 2 * pow(x,2) + x -1);
}



double func_dif(double x)
{
    return(3 * pow(x,2) + 4 * x + 1);
}
