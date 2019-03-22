import math
import os
def fun(x):
    return math.pow(x,2)-7*x+10
def waituifa(h0,y1):
    x1=0;h=h0;x2=h;y2=fun(x2)
    if y2>y1:
        h=-h;x3=x1;y3=y1;x1=x2;y1=y2;x2=x3;y2=y3;
    x3=x2+h;y3=fun(x3);
    while y3<y2:
      h=2*h;x1=x2;y1=y2;x2=x3;y2=y3;x3=x2+h;y3=fun(x3); 
    return x1,x2,x3,y1,y2,y3
  
print(waituifa(1,fun(0)));
os.system("pause");