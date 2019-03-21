%
clc,clear;
load('0-1797.mat');
load('1-1772.mat');
load('2-1750.mat');
load('3-1730.mat');
%
subplot(2,2,1)
axis auto
plot(X097_DE_time,'r');hold on;
plot(X097_FE_time);hold on;
legend('1797驱动端','1797风扇端')
title('1797转速时域波形')
%
subplot(2,2,2)
axis auto
plot(X098_DE_time,'r');hold on;
plot(X098_FE_time);hold on;
legend('1772驱动端','1772风扇端')
title('1772转速时域波形')
%
subplot(2,2,3)
axis auto
plot(X099_DE_time,'r');hold on;
plot(X099_FE_time);hold on;
legend('1750驱动端','1750风扇端')
title('1750转速时域波形')
%
subplot(2,2,4)
axis auto
plot(X100_DE_time,'r');hold on;
plot(X100_FE_time);hold on;
legend('1730驱动端','1730风扇端')
title('1730转速时域波形')