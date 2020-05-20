% changePLD2.m
%-----------------------------------------------------
% 清空所有变量
clear
% 清空屏幕
clc

% 时间跨度取0-4000
tspan = [0,1000];
% 初始值-
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% 调用语句
[T,Y] = ode45( @odefun8, tspan, x0 );
% 绘图
plot(T,Y(:,12),'-');
%%%%%改变PLD2
hold on;
% 时间跨度取0-4000
tspan = [0,1000];
% 初始值-
x0 = [2e+5,1e+1,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% 调用语句
[T,Y] = ode45( @odefun9, tspan, x0 );
% 绘图
plot(T,Y(:,12),'-.');
hold on;
% 时间跨度取0-4000
tspan = [0,1000];
% 初始值-
x0 = [2e+5,1e+0,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% 调用语句
[T,Y] = ode45( @odefun10, tspan, x0 );
% 绘图
plot(T,Y(:,12),'-');
legend('PLD2=100 nM','PLD2=10 nM','PLD2=1 nM');
xlabel('time(second)');
ylabel('concentration (nM)');
hold off;