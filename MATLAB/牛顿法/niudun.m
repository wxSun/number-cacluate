function [ output ] = niudun( a,b,delt,fdy,fdydy )
x(1)=(a+b)./2;
x(2)=x(1)-(fdy(x(1))./(fdydy(x(1))));
k=2;
    while abs(x(k)-x(k-1))>delt
          x(k+1)=x(k)-(fdy(x(k)))./(fdydy(x(k)));
          k=k+1;
    end
    output=x(k);
end

