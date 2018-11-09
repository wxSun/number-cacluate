function [ output ] = spline3( x,y,g )
%SPLINE3 
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

