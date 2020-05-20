clear
% �����Ļ
clc

% ʱ����ȡ0-1000
tspan = [0,1000];
% ��ʼֵ-
x0 = [2e+5,1e+2,4e+2,10,10,2000,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% �������
[T,Y] = ode45( @odefun8, tspan, x0 );
%��һ����ʵ������
t=[0,60,300,600];
Y1=[0.02767456,0.02585406,0.56731196,0.56731196];
Y2=[0.04570891,0.03560749,0.21412125,0.11472903];
P1=[0.25167246,0.31430853,0.3191766,0.27117196];
P2=[0.03299276,0.07684439,0.21941317,0.1156656];
% ��ͼ
plot(T,Y(:,12)/9000,'-b',t,Y1,'og');
hold on;
% ��ʼֵ-
x0 = [2e+5,1e+2,4e+2,10,10,240,1e+2,1e+4,0,3.5e+3,7e+3,0,4e+3];
% �������
[T,Y] = ode45( @odefun8, tspan, x0 );
% ��ͼ
plot(T,Y(:,12)/9000,'-r',t,Y2,'sm');
axis([0 1000 0 1]);
legend('ppAKT','ppAKT in experiment','ppAKT after knockdown PTPD2 ','ppAKT in experiment after knockdown PTPD2');
xlabel('time(second)');
ylabel('Normalized concentration ');
hold off
