function [ output ] = LUfac( A , n)
%  LU decomposition of matrix
%{-----------------------------------------------------------------------------
input :
        nonsingular matrix(A)   n*n
        Matrix dimensions (n)   int
output:
       upper triangular matrix(U)   n*n
       lower triangular matrix(L)   n*n

description :
      LU decomposition for nonsingular matrices
                                  HsinWang
-----------------------------------------------------------------------------%}
% Variable Instantiation
i=0;j=0;k=0;
L=[]; U=[];
%pper triangular matrix and  lower triangular matrix are covered by 0 and 1
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
%------------------------------------------------------------------------------
%Solve for upper triangular matrix elements
sumu=0;%Accumulation and temporary preservation
for k=1:1:n
    for i=k:1:n
        for j=1:1:(k-1)
            sumu=sumu - L(k,j)*U(j,i);
        end
        U(k,i)=A(k,i)-sumu;
    end
end
%------------------------------------------------------------------------------
%Solve for the lower triangular elements
suml=0;%Accumulation and temporary preservation
for k=1:1:n
    for i=(k+1):1:n
        for j=1:1:(k-1)
            suml=suml - L(i,j)*U(j,k);
        end
        L(i,k)=(A(i,k)-suml)/U(k,k);
    end
end
output= [L U];%Output L matrix and U matrix
end
