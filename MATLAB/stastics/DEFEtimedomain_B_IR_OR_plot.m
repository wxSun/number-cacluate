%figure1
load('0007-0-1797-B007-0.mat')
load('0007-1-1772-B007-1.mat')
load('0007-2-1750-B007-2.mat')
load('0007-3-1730-B007-3.mat')
clear X118RPM X119RPM X120RPM X121RPM X118_BA_time X119_BA_time X120_BA_time X121_BA_time
%
figure  
subplot(2,2,1);
plot(X118_DE_time,X118_FE_time);
subplot(2,2,2);
plot(X119_DE_time,X119_FE_time);
subplot(2,2,3);
plot(X120_DE_time,X120_FE_time);
subplot(2,2,4);
plot(X121_DE_time,X121_FE_time);

%figure2
load('0007-0-1797-IR007-0.mat')
load('0007-1-1772-IR007-1.mat')
load('0007-2-1750-IR007-2.mat')
load('0007-3-1730-IR007-3.mat')
clear X105RPM X106RPM X107RPM X108RPM X105_BA_time X106_BA_time X107_BA_time X108_BA_time
%
figure
subplot(2,2,1);
plot(X105_DE_time,X105_FE_time);
subplot(2,2,2);
plot(X106_DE_time,X106_FE_time);
subplot(2,2,3);
plot(X107_DE_time,X107_FE_time);
subplot(2,2,4);
plot(X108_DE_time,X108_FE_time);

%figure3
load('0007-0-1797-OR007-30')
load('0007-1-1772-OR007-31')
load('0007-2-1750-OR007-32')
load('0007-3-1730-OR007-33')
clear X144RPM X145RPM X146RPM X147RPM X144_BA_time X145_BA_time X146_BA_time X147_BA_time
%
figure
subplot(2,2,1);
plot(X144_DE_time,X144_FE_time);
subplot(2,2,2);
plot(X145_DE_time,X145_FE_time);
subplot(2,2,3);
plot(X146_DE_time,X146_FE_time);
subplot(2,2,4);
plot(X147_DE_time,X147_FE_time);

%figure4
load('0007-0-1797-OR007-60')
load('0007-1-1772-OR007-61')
load('0007-2-1750-OR007-62')
load('0007-3-1730-OR007-63')
clear  X130RPM X131RPM X132RPM X133RPM   X130_BA_time X131_BA_time X132_BA_time X133_BA_time
%
figure
subplot(2,2,1);
plot(X130_DE_time,X130_FE_time);
subplot(2,2,2);
plot(X131_DE_time,X131_FE_time);
subplot(2,2,3);
plot(X132_DE_time,X132_FE_time);
subplot(2,2,4);
plot(X133_DE_time,X133_FE_time);

%figure5
load('0007-0-1797-OR007-120')
load('0007-1-1772-OR007-121')
load('0007-2-1750-OR007-122')
load('0007-3-1730-OR007-123')
clear X156RPM X158RPM X159RPM X160RPM X156_BA_time X158_BA_time X159_BA_time X160_BA_time
%
figure
subplot(2,2,1);
plot(X156_DE_time,X156_FE_time);
subplot(2,2,2);
plot(X158_DE_time,X158_FE_time);
subplot(2,2,3);
plot(X159_DE_time,X159_FE_time);
subplot(2,2,4);
plot(X160_DE_time,X160_FE_time);