function [ output ] = LagrangianInterpolationPolynomial(U,V,x)
%lagrangianinterpolationpolynomial
%-------------------------------------------------------------------------- 
%input
%       U=[U1 U2...Un]   1*n            Interpolation known points
%       V={V1 V2...Vn}   1*n            Interpolation known points
%       x                1              Interpolated point                 
%output 
%       s                1              Interpolation point value
%
%description
%       Lagrangian interpolation method calculation
%                                    HisnWang  2018.11.8
%--------------------------------------------------------------------------
%
i=0;j=0; n=length(U); s=0.0;
%
for i=1:n
    t=1.0;
    for j=1:n
        if(j~=i)
           t=t*(x-U(j))/(U(i)-U(j));
        end
    end
    s=s+t*V(i);
end
%
output=s;
end

