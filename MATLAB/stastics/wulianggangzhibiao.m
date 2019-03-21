function [ v ] = wulianggangzhibiao( n )
%WULIANGGANGZHIBIAO 无量纲参数分析
%离散信号的无量纲指标  
i=0;number=length(n);temp1=0;temp2=0;temp3=0;
    for i=1:(number)
        temp1=temp1+n(i).^2;
        temp2=temp2+abs(n(i));
        temp3=temp3+sqrt(abs(n(i)));
    end
% 波形指标
v(1)=(sqrt(temp1/number))./(temp2/number);
%峰值指标
v(2)=(max(n))./((sqrt(temp1/number)));
%脉冲指标
v(3)=(max(n))./(temp2/number);
%裕度指标
v(4)=(max(n))./((temp3/number).^2);
%峭度指标
v(5)=(kurtosis(n))./((sqrt(temp1/number)).^4);
end

