function [ s ] = Hortonmethod( v,x0)
%NEST  Polynomial evaluation of Horner method
n=length(v);i=0;s=[ ];   
s=v(n-1)+x0*v(n);
for i=2:n-1
    s=v(n-i)+x0*s;
end
end

