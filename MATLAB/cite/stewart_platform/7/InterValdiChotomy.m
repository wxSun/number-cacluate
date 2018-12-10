function [ output] = InterValdiChotomy( f,left, right ,delta )
% input
%       f            ______ called function
%      (left,right)  ______ computation interval
%       delta        ______ accuracy
% output
%       output       _____ approximate zero,iterative times
%description
%       Solve the equation by dichotomy
%       HsinWang
middle=(left+right)*0.5;
count=0;
while abs(feval(f,middle))>=delta

    if feval(f,left)*feval(f,middle)<=0
        right=middle;
    else
        left=middle;
    end
    count=count+1;
    middle=(left+right)*0.5;
end
output = [middle,count];
end


