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
disp  [   平均值    最大值    最小值     方差     标准差    均方值均   方根值    偏斜度     峭度 ]
m=[ tongjixinxi(X130_DE_time);tongjixinxi(X130_FE_time);tongjixinxi(X130_BA_time);
    tongjixinxi(X131_DE_time);tongjixinxi(X131_FE_time);tongjixinxi(X131_BA_time);
    tongjixinxi(X132_DE_time);tongjixinxi(X132_FE_time);tongjixinxi(X132_BA_time);
    tongjixinxi(X133_DE_time);tongjixinxi(X133_FE_time);tongjixinxi(X133_BA_time);
    
    tongjixinxi(X144_DE_time);tongjixinxi(X144_FE_time);tongjixinxi(X144_BA_time);
    tongjixinxi(X145_DE_time);tongjixinxi(X145_FE_time);tongjixinxi(X145_BA_time);
    tongjixinxi(X146_DE_time);tongjixinxi(X146_FE_time); tongjixinxi(X146_BA_time);
    tongjixinxi(X147_DE_time);tongjixinxi(X147_FE_time);tongjixinxi(X147_BA_time);
    
    tongjixinxi(X156_DE_time);tongjixinxi(X156_FE_time);tongjixinxi(X156_BA_time);
    tongjixinxi(X158_DE_time);tongjixinxi(X158_FE_time);tongjixinxi(X158_BA_time);
    tongjixinxi(X159_DE_time);tongjixinxi(X159_FE_time);tongjixinxi(X159_BA_time);
    tongjixinxi(X160_DE_time);tongjixinxi(X160_FE_time);tongjixinxi(X160_BA_time); ];
disp(m);
disp ----------------------------------------------------------------------------------------------