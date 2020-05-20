% 改变PTEN初始浓度的ppAKT浓度变化
clear
% 清空屏幕
clc

% 时间跨度取0-1000
tspan = [0,1000];
% 初始值-
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% 调用语句
[T,Y] = ode45( @odefun8, tspan, x0 );
% 绘图
plot(T,Y(:,12),'-');
hold on;
%改变PTPD2初始浓度
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