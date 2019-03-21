clc,clear;

load('0007-0-1797-OR007-30.mat')
load('0007-0-1797-OR007-60.mat')
load('0007-0-1797-OR007-120.mat')
load('0007-1-1772-OR007-31.mat')
load('0007-1-1772-OR007-61.mat')
load('0007-1-1772-OR007-121.mat')
load('0007-2-1750-OR007-32.mat')
load('0007-2-1750-OR007-62.mat')
load('0007-2-1750-OR007-122.mat')
load('0007-3-1730-OR007-33.mat')
load('0007-3-1730-OR007-63.mat')
load('0007-3-1730-OR007-123.mat')

clear X130RPM X131RPM X132RPM X133RPM X144RPM X145RPM X146RPM X147RPM X156RPM X158RPM X159RPM X160RPM 

disp ----------------------------------------------------------------------------------------------
disp  [  波形指标  峰值指标  脉冲指标  裕度指标  峭度指标  ]
n=[    wulianggangzhibiao(X144_DE_time);wulianggangzhibiao(X144_FE_time); wulianggangzhibiao(X144_BA_time);
    wulianggangzhibiao(X145_DE_time);wulianggangzhibiao(X145_FE_time);wulianggangzhibiao(X145_BA_time);
    wulianggangzhibiao(X146_DE_time);wulianggangzhibiao(X146_FE_time) ;wulianggangzhibiao(X146_BA_time);
    wulianggangzhibiao(X147_DE_time);wulianggangzhibiao(X147_FE_time);wulianggangzhibiao(X147_BA_time);
     wulianggangzhibiao(X130_DE_time);wulianggangzhibiao(X130_FE_time); wulianggangzhibiao(X130_BA_time);
    wulianggangzhibiao(X131_DE_time);wulianggangzhibiao(X131_FE_time);wulianggangzhibiao(X131_BA_time);
    wulianggangzhibiao(X132_DE_time);wulianggangzhibiao(X132_FE_time) ;wulianggangzhibiao(X132_BA_time);
    wulianggangzhibiao(X133_DE_time);wulianggangzhibiao(X133_FE_time);wulianggangzhibiao(X133_BA_time);
     wulianggangzhibiao(X156_DE_time);wulianggangzhibiao(X156_FE_time); wulianggangzhibiao(X156_BA_time);
    wulianggangzhibiao(X158_DE_time);wulianggangzhibiao(X158_FE_time);wulianggangzhibiao(X158_BA_time);
    wulianggangzhibiao(X159_DE_time);wulianggangzhibiao(X159_FE_time) ;wulianggangzhibiao(X159_BA_time);
    wulianggangzhibiao(X160_DE_time);wulianggangzhibiao(X160_FE_time);wulianggangzhibiao(X160_BA_time);  ];
disp(n);
disp ----------------------------------------------------------------------------------------------