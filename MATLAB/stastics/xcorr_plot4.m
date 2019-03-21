%
clc,clear;
load('0-1797.mat');
load('1-1772.mat');
load('2-1750.mat');
load('3-1730.mat');
%
subplot(4,2,1)
plot(xcorr(X097_DE_time));hold on;
title('驱动端1797rpm转速的自相关函数');

subplot(4,2,2)
plot(xcorr(X097_FE_time));hold on;
title('风扇端1797rpm转速的自相关函数');

subplot(4,2,3)
plot(xcorr(X098_DE_time));hold on;
title('驱动端1772rpm转速的自相关函数');

subplot(4,2,4)
plot(xcorr(X098_FE_time));hold on;
title('风扇端1772rpm转速的自相关函数');

subplot(4,2,5)
plot(xcorr(X099_DE_time));hold on;
title('驱动端1750rpm转速的自相关函数');

subplot(4,2,6)
plot(xcorr(X099_FE_time));hold on;
title('风扇端1750rpm转速的自相关函数');

subplot(4,2,7)
plot(xcorr(X100_DE_time));hold on;
title('驱动端1730rpm转速的自相关函数');

subplot(4,2,8)
plot(xcorr(X100_FE_time));hold on;
title('风扇端1730rpm转速的自相关函数');