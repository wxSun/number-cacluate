function [ output] = cholesky( A,n )
%CHOLESKY 
%  
%
%
%
%
%
%
%
%
i=0;j=0;k=0;
L=[];
%
for i=1:1:n
    for j=1:1:n
            L(i,j)=0;
    end
end
%
sum = 0;%
for j=1:1:n
    for k=1:1:(j-1)
        sum=sum+power(L(j,k),2);
    end
    L(j,j)=sqrt(A(j,j)-sum);
end
%
sum = 0;%
for j=1:1:n
    for i=(j+1):1:n
        for k=1:1:(j-1)
            sum=sum+L(i,k)*L(j,k);
        end
        L(i,j)=(A(i,j)-sum)/L(j,j);
    end
end
output=[L L'];
end

