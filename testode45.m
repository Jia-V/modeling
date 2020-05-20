% testode45.m
%-----------------------------------------------------
% 清空所有变量
clear
% 清空屏幕
clc

% 时间跨度取0-5000
tspan = [0,5000];
% 初始值
x0 = [700,10,0,270,700,0,150];
% 调用语句
[T,Y] = ode45( @odefun, tspan, x0 );
% 绘图
plot(T,Y(:,1),'-',T,Y(:,3),'-',T,Y(:,5),'-.',T,Y(:,6),'-.')
legend('PIP2','PIP3','AKT','AKTpp')
xlabel('time(second)');
ylabel('concentration (nM)');