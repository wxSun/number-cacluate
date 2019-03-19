function [ output] = ercichazhifa( f,a,b,h,delt )
x1=a;x2=(a+b)./2;x3=b;
y1=f(x1);y2=f(x2);y3=f(x3);
c1=(y3-y1)./(x3-x1);
c2=((y2-y1)./(x2-x1)-c1)./(x2-x3);
xp=0.5*(x1+x3-c1./c2);
yp=f(xp);
   while abs((y2-yp)./(y2))<delt
       if ((xp-x2)*h>0)
           if(y2>=yp)
                x1=x2;
                y1=y2;
                x2=xp;
                y2=yp;
           else
                x3=xp;
                y3=yp;
           end
       else
           if(y2>=yp)
                x3=x2;
                y3=y2;
                x2=xp;
                y2=yp;
           else
                x1=xp;
                y1=yp;
           end
       end
        c1=(y3-y1)./(x3-x1);
        c2=((y2-y1)./(x2-x1)-c1)./(x2-x3);
        xp=0.5*(x1+x3-c1./c2);
        yp=f(xp);
   end
   if y2<yp
      output=[x2 y2 ];
   else
      output=[xp yp ];
   end
end

