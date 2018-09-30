function [ output] = qjeff( left, right ,delta )
%
%
%
%
%
%

while(func(left)*func(right)<0)
      middle=(left+right)*0.5;
      if(func(middle)*func(left)<0)
          right = middle;
      else
          left = middle;
      end
            if (abs(middle-left)<=delta)
                break;
            end
          
end
output = (left+right)*0.5;
end



function [ y] = func( x )
%
%
%
%
%
%
%
y= 1/3 * power(x,3) - x* power(x,2)+4 *x -4 ;
end
