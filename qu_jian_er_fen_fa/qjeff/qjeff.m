function [ output] = qjeff( left, right ,delta )
% input
%      (left,right)  ______ computation interval
%       delta        ______ accuracy
% output
%       output       _____ approximate zero,iterative times
%description
%       Solve the equation by dichotomy
%       HsinWang
middle=(left+right)*0.5;
count=0;
while abs(func(middle))>=delta

    if func(left)*func(middle)<=0
        right=middle;
    else
        left=middle;
    end
    count=count+1;
    middle=(left+right)*0.5;
end
output = [middle,count];
end


function [ y] = func( x )
%description
%           Main function
%           HsinWang
y= 2*sin(x)-x ;
end
