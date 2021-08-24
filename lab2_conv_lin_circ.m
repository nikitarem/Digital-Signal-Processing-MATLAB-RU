%% Л.Р. №2 - Свертка сигналов: линейная и круговая

clear; clc; close all;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ЗАДАНИЕ

S1=[1 2 3 2 1]; %треугольник
S2=[2 2 2]; %прямоугольник

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% ОСНОВНАЯ ПРОГРАММА

%графики сигналов
figure('Name','Дискретные сигналы','NumberTitle','off'); 
subplot(2,1,1); bar(S1); title 'Последовательность #1'; grid on; 
subplot(2,1,2); bar(S2); title 'Последовательность #2'; grid on;

%свертка сигналов
Sn1=conv(S1,S2); %линейная свертка

%вычисление круговой свертки
%добавление нулей в матрицу сигнала
if length(S1)~=length(S2);
    nul=sqrt((length(S1)-length(S2))^2);
    matnul=zeros(1,nul);
    if length(S1)<length(S2);
        S1=[S1 matnul];
    else;
        S2=[S2 matnul];
    end;
end; 
S22=rot90(rot90(S2)); %отражение сигнала
Sn2=ifft(fft(S1).*fft(S22));

%графики сверток
figure('Name','Свертка','NumberTitle','off'); 
subplot(2,1,1); bar(Sn1); title 'Линейная свертка'; grid on; 
subplot(2,1,2); bar(Sn2); title 'Круговая свертка'; grid on;