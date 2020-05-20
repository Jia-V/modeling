% �ı�PTEN��ʼŨ�ȵ�ppAKTŨ�ȱ仯
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
plot(T,Y(:,12),'-');
hold on;
%�ı�PTPD2��ʼŨ��
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,6e+3,7e+3,0,4e+3];
[T,Y] = ode45( @odefun8, tspan, x0 );
plot(T,Y(:,12),'-.');
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,9e+3,7e+3,0,4e+3];
[T,Y] = ode45( @odefun8, tspan, x0 );
plot(T,Y(:,12),'-');
legend('PTEN=3500 nM','PTEN=6000 nM','PTEN=9000 nM');
xlabel('Time(second)');
ylabel('Concentration (nM)');
hold off;