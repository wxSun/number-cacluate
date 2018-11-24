function [out] = NewtonIteration(input,n)
% 
%intput:
%
%        double      input
%         int        n
%   output:
%
%        double     out
%        double     count
%   description :
%                                       hsinwang
%-------------------------------------------------------------------------------
x = [ ] ;
x(1) =input;
count = 0 ;
for count = 1 : n
    x(count+1) = x(count) - (func(x(count)))/(func_dif(x(count)));
    count = count+ 1;
end
out= [ x(count) count-2]  %#ok<NOPRT>
end



function [ y ] = func_dif( x )
%-------------------------------------------------------------------------------
%   intput:
%
%        double      x
%   output:
%
%        double      y
%   description :
%                                   hsinwang
% ------------------------------------------------------------------------------
y= 3 * power(x,2) + 4 * x + 1;
end



function [ y ] = func( x )
%-------------------------------------------------------------------------------
%   intput:
%
%        double      x
%   output:
%
%        double      y
%   description :
%                                   hsinwang
%-------------------------------------------------------------------------------
y = power( x,3) + 2 * power(x,2) + x -1;
end
