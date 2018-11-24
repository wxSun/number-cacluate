function [ output ] = HermiteInterpolation( U,V,DV,x )
%HERMITEINTERPOLATION
%--------------------------------------------------------------------------   
%input
%
%
%
%
%output
%
%
%description
%
%                               HsinWang 2018.11.8
%--------------------------------------------------------------------------
%
i=0;j=0; n=length(U);s1=0.0;s2=0.0;t=1.0;
%
for j=1;n
    for i= 1:n
        if(i~=j)
           s1=s1+1.0/(U(j)-U(i));
        end
    end    
    t=1.0;
    for j=1:n
        if(j~=i)
           t=t*(x-U(j))/(U(i)-U(j));
        end
    end
    s2=s2+(1-2*(x-U(i)))*power(t,2)*V(j);      
end
%
i=0;j=0;s3=0.0;t=1.0;
%
for j=1:n;
    t=1.0;
    for j=1:n
        if(j~=i)
           t=t*(x-U(j))/(U(i)-U(j));
        end
    end 
    s3=s3+(x-U(j))*power(t,2)*DV(j);
end
%
output=s2+s3;
end

