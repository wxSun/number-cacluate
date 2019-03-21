%
clc,clear;
load('0-1797.mat');
load('1-1772.mat');
load('2-1750.mat');
load('3-1730.mat');
%
subplot(2,2,1)
axis auto
plot(X097_DE_time,X097_FE_time,'b');hold on;

title('1797转速波形')
%
subplot(2,2,2)
axis auto
plot(X098_DE_time,X098_FE_time,'b');hold on;

title('1772转速波形')
%
subplot(2,2,3)
axis auto
plot(X099_DE_time,X099_FE_time,'b');hold on;

title('1750转速波形')
%
subplot(2,2,4)
axis auto
plot(X100_DE_time,X100_FE_time,'b');hold on;

title('1730转速波形')