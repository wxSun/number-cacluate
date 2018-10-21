function [ output] = qjeff( left, right ,delta )
%
%
%
%
%
%
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
%
%
%
%
%
%
%
y= 1.0/3 * power(x,3) -power(x,2)+4 *x -4 ;
end
