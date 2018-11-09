function [ output] = gaussianelimination(A,b,n)
%Gauion coefficient matrix A Non-homogeneous constant( b ),dimension ( n )
%{-------------------------------------------------------------------------
%input :
%        Gauion coefficient matrix (A)       n*n
%        Non-homogeneous constant( b )       n*1
%        dimension ( n )                     int
%output :
%         X(output)                          n*1
%
%description :
%        The gauss elimination method is used to solve linear equations
%                                                 HsinWang  2018.10.11
%-------------------------------------------------------------------------%}

i=0;j=0;k=0;    % Iterator initialization
L = [ ];        % The intermediate matrix is initialized
X = [ ];        % Gauss elimination method results

% elimination process
for k= 1:1:(n-1)
    for i=(k+1):1:(n)
        L(i,k) = A(i,k) / A(k,k);
        b(i) = b(i) - L(i,k) * b(k);
        for j=(k+1):1:n
            A(i,j) = A(i,j) - L(i,k) * A(k,j);
        end
    end
end

%------------------------------------------------------------------------------
%
%   debug
%   output= [A b];
%------------------------------------------------------------------------------

% backward process

X(n) = b(n)/A(n,n);
sum=0;    % sum of temporary variables
for i= (n-1):-1:1
    for j=(i+1):1:n
        sum= sum + A(i,j) * X(j);
    end
    X(i)=(b(i)-sum)/A(i,i);
end
% Solution Output
output= X;
end
