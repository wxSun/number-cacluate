
load('0-1797.mat')
load('1-1772.mat')
load('2-1750.mat')
load('3-1730.mat')
clear X100RPM X097RPM

disp ----------------------------------------------------------------------------------------------
disp  [  波形指标  峰值指标  脉冲指标  裕度指标  峭度指标  ]
n=[    wulianggangzhibiao(X097_DE_time);wulianggangzhibiao(X097_FE_time) 
    wulianggangzhibiao(X098_DE_time);wulianggangzhibiao(X098_FE_time)  
    wulianggangzhibiao(X099_DE_time);wulianggangzhibiao(X099_FE_time) 
    wulianggangzhibiao(X100_DE_time);wulianggangzhibiao(X100_FE_time)];
disp(n);
disp ----------------------------------------------------------------------------------------------