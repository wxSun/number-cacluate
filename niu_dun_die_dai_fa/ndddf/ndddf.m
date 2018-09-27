function [out,count] = ndddf(input,n)
%-----------------------------------------------------------------
%   intput:
%
%        double      input
%         int        n
%   output:
%
%        double     out
%        double     count
%   description : 给定一个近似根值和迭代次数
%                返回最终迭代的近似根和迭代次数
%                           hsinwang
%----------------------------------------------------------------

x = [ ] ;
x(1) =input;
 count = 0 ;
    for count = 1 : n
        x(count+1) = x(count) - (func(x(count)))/(func_dif(x(count)));
        count = count+ 1;
    end
 out = x(count);
ans = [ out count]
end
