/*# include <stdio.h>
int main(int argc, char const *argv[])
{





    return 0;
}
*/


/*******************************************************************************
*
*FUNCTION NAME : double aitken(double input, double length,int n )
*
*ARGUMENTS:
*
*ARGUMENT       TYPE        I/O         DESCRIPTION           *
*--------       ----        ---         ----------            *
* input        double       I           set value
*   n          int          I           Iterations
* length       double       I           Iteration approximates step size
*RETURNs:
*ARGUMENT       TYPE        I/O         DESCRIPTION           *
*--------       ----        ---         ----------            *
* output        double      O          The approximate zero   *
*
*DESCRIPTION :
*             Aitken accelerated iterative method
*                                      HsinWang  2018.10.13
*******************************************************************************/
double aitken(double input, double length,int n )
{
    double x[]=0;
    int count=0;
    double output=0.0;

    x[0] = input;
            for (count=0;count<n;count++){
                x[count+1] = func(x[count])+((length)/(1-(length))
                                            *(func(x[count]-x[count])));
            }
    output = x[count];
    return output;
}
double func(double x)
{
    return( pow( x,3) + 2 * pow(x,2) + x -1);
}
