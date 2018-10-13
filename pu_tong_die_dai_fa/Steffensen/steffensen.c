
#include <stdio.h>
int int main(int argc, char const *argv[]) {
    /* code */
    return 0;
}













double steffensen(double input,double n)
{
    double x[]=0;
    int count=0;
    double output=0.0;

    x[0]=input;
            for (count=0;count<n;count++){
                x[count+1]=func(func(x[count]))
                    +(pow((func(func(x[count]))-func(x[count])),2))
                        /(-func(func(x[count]))+2*func(x[count])-x[count]);
            }
    output=x[count];
    return output;
}
double func(double x)
{
    return( pow( x,3) + 2 * pow(x,2) + x -1);
}
