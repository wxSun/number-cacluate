import math
import os
def fun(x):
    return (x*x+2*x);
def fengefa(a,b,delt):
    lamb=0.618;
    x1=b-lamb*(b-a);y1=fun(x1);
    x2=a+lamb*(b-a);y2=fun(x2);
    if y1>=y2 :
        a=x1;x1=x2;y1=y2;x2=a+lamb*(b-a);y2=fun(x2);
    else:
        b=x2;x2=x1;y2=y1;x1=b-lamb*(b-a);y1=fun(x1);
    while abs((b-a)/b)>=delt and abs((y2-y1)/y2)>=delt :
        if y1>=y2 :
            a=x1;x1=x2;y1=y2;x2=a+lamb*(b-a);y2=fun(x2)
        else:
            b=x2;x2=x1;y2=y1;x1=b-lamb*(b-a);y1=fun(x1)
    return ((a+b)/2);
print(fengefa(-3,5,0.0001),fun(fengefa(-3,5,0.0001)));
os.system("pause");
