function [ v ] = tongjixinxi( n )
%TONGJIXINXI 统计量的数字特征
% 离散信号的数字特征
% v(1)平均值
v(1)=mean(n);
% v(2)最大值
v(2)=max(n);
%v(3)最小值
v(3)=min(n);
%v(4)方差
v(4)=var(n);
%v(5)标准差
v(5)=std(n);
%v(6)均方值
number=0;i=0;sum=0;
number=length(n);
for i=1:number
    sum=sum+n(i).^2;
end
v(6)=sum/number;
%v(7)均方根值
v(7)=sqrt(v(6));
%v(8)偏斜度
v(8)=skewness(n);
%V(9)峭度
v(9)=kurtosis(n);
end

