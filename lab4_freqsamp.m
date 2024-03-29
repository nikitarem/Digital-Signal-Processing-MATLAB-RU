%% Л.Р. №4 - КИХ-фильтры - метод частотной выборки

clear; clc; close all;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ЗАДАНИЕ

Fd=5000; %частота дискретизации
F=[0 0.3 0.7 1]; %вектор частот
m=[1 0 0 1]; %вектор значений ачх
N=42; %порядок фильтра

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ОСНОВНАЯ ПРОГРАММА

%расчет
b=fir2(N,F,m);%расчет коэффициентов фильтра

%графики
grf=fvtool(b,1);
set(grf,'NormalizedFrequency','off','Fs',Fd);
