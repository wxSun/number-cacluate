function [ output] = zuisuxiajiang( fdy,x0,delt )
%  最速下降法 Steepest Descent Method
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
global D  X0 X0N
k=0;
X0=x0;
D=fdy(X0); 
temp= waituifa(@optf,0.0001);
left=temp(1);right=temp(3);
t=ercichazhifa(@optf,left,right,1,0.0001);
x=t(1);
X0N=X0+x*D;
    while norm(X0N-X0)>=delt
            k=k+1;
            X0=X0N;
            D=fdy(X0);
            temp= waituifa(@optf,0.0001);
            left=temp(1);right=temp(3);
            t=ercichazhifa(@optf,left,right,1,0.0001);
            x=t(1);
            X0N=X0+x*D;
    end
output=X0N;
end


