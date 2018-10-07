function [ output] = qjeff( left, right ,delta )
%
%
%
%
%
%
middle=(left+right)*0.5;
while func(middle)>=delta
    middle=(left+right)*0.5;
    if func(left)*func(middle)<=0
        right=middle;
    else
        left=middle;    
    end
end

output = middle;

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
