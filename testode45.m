% testode45.m
%-----------------------------------------------------
% ������б���
clear
% �����Ļ
clc

% ʱ����ȡ0-5000
tspan = [0,5000];
% ��ʼֵ
x0 = [700,10,0,270,700,0,150];
% �������
[T,Y] = ode45( @odefun, tspan, x0 );
% ��ͼ
plot(T,Y(:,1),'-',T,Y(:,3),'-',T,Y(:,5),'-.',T,Y(:,6),'-.')
legend('PIP2','PIP3','AKT','AKTpp')
xlabel('time(second)');
ylabel('concentration (nM)');