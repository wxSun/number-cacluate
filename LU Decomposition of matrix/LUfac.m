function [ output ] = LUfac( A , n)
%  LU decomposition of matrix
%{   
input :
 

output:



description :


%}
%
i=0;j=0;k=0;
L=[]; U=[];
%
for i=1:1:n
    for j=1:1:n
        if i==j
            L(i,j)=1;
        else
            L(i,j)=0;
        end
        U(i,j)=0;   
    end
end
%
%
sumu=0;
for k=1:1:n
    for i=k:1:n
        for j=1:1:(k-1)
            sumu=sumu - L(k,j)*U(j,i); 
        end 
        U(k,i)=A(k,i)-sumu;
    end
end
%
%
suml=0;
for k=1:1:n
    for i=(k+1):1:n
        for j=1:1:(k-1)
            suml=suml - L(i,j)*U(j,k);     
        end
        L(i,k)=(A(i,k)-suml)/U(k,k);
    end
end
output= [L U];
end

