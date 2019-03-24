function [ output ] = waituifa(f,h0)
%  ÍâÍÆ·¨ Extrapolation
%{-----------------------------------------------------------------------------
%input :
%        f     Interpolated function           function handle
%         h    Interpolation direction          h>0 || h<0           double
%output:
%         output  One-dimensional search interval high-low-high   M [1*6]
%description :
%      Extrapolation method for one-dimensional search interval
%                                  HsinWang
%-----------------------------------------------------------------------------%}
x1=0;h=h0;y1=f(x1);x2=h;y2=f(x2);
    if  y2>y1
        h=-h;x3=-x1;y3=y1;
        
        x1=x2;y1=y2;x2=x3;y2=y3;
    end
x3=x2+h;y3=f(x3);
    while y3<y2
        h=2*h;
        x1=x2;y1=y2;x2=x3;y2=y3;
        x3=x2+h;y3=f(x3);
    end
output= [x1 x2 x3 y1 y2 y3 ];
end

