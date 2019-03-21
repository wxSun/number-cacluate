%
clc,clear;
load('0-1797.mat');
load('1-1772.mat');
load('2-1750.mat');
load('3-1730.mat');
%
subplot(2,2,1)
axis auto
tfestimate(X097_DE_time,X097_FE_time); hold on;
%
subplot(2,2,2)
axis auto
tfestimate(X098_DE_time,X098_FE_time); hold on;
%
subplot(2,2,3)
axis auto
tfestimate(X099_DE_time,X099_FE_time);  hold on;
%
subplot(2,2,4)
axis auto
tfestimate(X100_DE_time,X100_FE_time);  hold on;