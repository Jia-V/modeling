% pathway.m
%-----------------------------------------------------
% ������б���
clear
% �����Ļ
clc

% ʱ����ȡ0-1000
tspan = [0,1000];
% ��ʼֵ-
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% �������
[T,Y] = ode45( @odefun8, tspan, x0 );
% ��ͼ
plot(T,Y(:,3),'-',T,Y(:,4),'-.')
axis([0 1000 0 1000]);
legend('PC','PA')
xlabel('Time(second)');
ylabel('Concentration (nM)');
plot(T,Y(:,8),'-',T,Y(:,9),'-.',T,Y(:,11),'-',T,Y(:,12),'-.')
legend('PIP2','PIP3','AKT','ppAKT')
xlabel('Time(second)');
ylabel('Concentration (nM)');