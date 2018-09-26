


















double main_func(double x)
{




}


double result (double left,double right, double delta)
{
    double out = 0;
    double middle = 0;

    double middle = ( left + right ) / 2;

        while (main_func(middle)>delta)
              {
                        if (main_func(left)>main_func(middle)) {
                                      left = middle ;
                           }else {
                                      right = middle ;
                           }
              }
    out = middle ;
    return out;
}
