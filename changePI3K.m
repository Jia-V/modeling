% �ı�PI3K��ʼŨ�ȵ�ppAKTŨ�ȱ仯
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
x0 = [2e+5,1e+2,4e+2,10,10,2000,5e+1,1e+4,0,3.5e+3,7e+3,0,4e+3];
[T,Y] = ode45( @odefun8, tspan, x0 );
plot(T,Y(:,12),'-.');
x0 = [2e+5,1e+2,4e+2,10,10,2000,2e+1,1e+4,0,3.5e+3,7e+3,0,4e+3];
[T,Y] = ode45( @odefun8, tspan, x0 );
plot(T,Y(:,12),'-');
legend('PI3K=100 nM','PI3K=50 nM','PI3K=20 nM');
xlabel('Time(second)');
ylabel('Concentration (nM)');
hold off;