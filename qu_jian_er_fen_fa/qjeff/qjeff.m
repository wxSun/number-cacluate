function [ output] = qjeff( left, right ,delta )
% input
%      (left,right)  ------ zuo_you_duan_dian
%       delta        ______ jing_du
% output
%       output       _____  jin_si_ling_dian,die_dai_ci_shu
%description
%       er fen fa qiu jie fangcheng
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
