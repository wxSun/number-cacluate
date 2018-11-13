function [ output ] = threenaturalsplineinterpolation( x,y,g )
%threenaturalsplineinterpolation
%--------------------------------------------------------------------------   
%
%
%
%
%
%
%
%
%
%
%--------------------------------------------------------------------------
n=length(x);
a = [ ];b = [ ];c = [ ]; d = [ ];    s = [ ];
delt = [ ]; delta = [];
%
    for i=1:n-1
        a(i)=y(i);
        delt(i)=x(i+1)-x(i);
        delta(i)=y(i+1)-y(i);
    end
%
mA= [ ]; mb = [ ];
    for i=1:n
        for j=1:n
            mA(i,j)=0;
        end
    end
mA(1,1)=1; mA(n,n)=1; 
    for i=2:n-1
        for j=1:n-2
            mA(i,j)=delt(j);
        end
        for j=2:n-1
            mA(i,j)=2*delt(j-1)+delt(j);
        end
        for j=3:n
            mA(i,j)=delt(i);
        end
    end
    for i=2:n-1
        mb(i)=3*(delta(i)/delt(i)-delta(i-1)/delt(i-1));
    end
c=mA\mb; %%
%
    for i=1:n-1
        d(i)=(c(i+1)-c(i))/(3.0*delt(i));
        b(i)=(delta(i))/(delt(i))-delt(i)/3.0 * (2*c(i)+c(i+1));
    end
%
    for i=1:n-1
        s(i)=a(i)+b(i)*(g-x(i))+c(i)*power((x-x(i)),2)+d(i)*power((x-x(i)),3);
    end
output=s;
%
end

