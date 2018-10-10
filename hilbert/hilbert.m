function [ output ] = hilbert( n )
%
% 
%
%
%
x=0;  i=0;j=0;
for i=1 : n
    for j=1 : n
    x(i,j)=1/(i+j);
    end
end
output=x;
end

