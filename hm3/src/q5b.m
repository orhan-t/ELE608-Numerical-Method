clear all;
clc;
%given values
x=[1.02 0.95 0.87 0.77 0.67 0.56 0.44 0.30 0.16 0.01]';%x
y=[0.39 0.32 0.27 0.22 0.18 0.15 0.13 0.12 0.13 0.15]';%y
z=[1,1,1,1,1,1,1,1,1,1]';

%perturb the input data
n=length(x);
xpert=x+(rand([n,1])*0.01-0.005);
ypert=y+(rand([n,1])*0.01-0.005);
%obtain A and f such taht Ax=f
A=[ypert.^2,xpert.*ypert,xpert,ypert,z];
f=xpert.^2;

%solve the least square solution
%this solution gives coefficients of ellipse
sol=A\f; % sol=[a b c d e]'
%coefficients
a=sol(1);
b=sol(2);
c=sol(3);
d=sol(4);
e=sol(5);
%obtain boundry of x1 parameter from solve(B^2-4aC)
x1=-0.4897:0.001:1.1302;
%ellipse
B=b*x1+d;
C=e+c*x1-x1.^2;
y1=(-B+sqrt(B.^2-4*a*C))/(2*a); % lower part of ellipse
y2=(-B-sqrt(B.^2-4*a*C))/(2*a); % upper part of ellipse
%plot ellipse and x,y valuse on the same figure
plot(x1,y1)
xlabel('x values');
ylabel('y values');
hold on
plot(x1,y2);
plot(x,y,'*');

n=length(x);
x_per=x+(rand([n,1])*0.01-0.005);
y_per=y+(rand([n,1])*0.01-0.005);