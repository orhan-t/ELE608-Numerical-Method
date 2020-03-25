% Project 1
clc
clear all
close all
format short
% Question 1
% We have the data in vector x and y
x=[1.02 0.95 0.87 0.77 0.67 0.56 0.44 0.3 0.16 0.01]';
y=[0.39 0.32 0.27 0.22 0.18 0.15 0.13 0.12 0.13 0.15]';
% Our model is ay^2 + bxy + cx + dy + e = x^2
% Question 1
% We start by creating the matrix G
n=length(x);
G=zeros(n,5);
for i=1:n
G(i,1)=y(i)^2;
G(i,2)=x(i)*y(i);
G(i,3)=x(i);
G(i,4)=y(i);
G(i,5)=1;
end
G;
rankG=rank(G);
congG=cond(G);
% Then we compute the solution vector x^2
f=zeros(n,1);
for i=1:n
f(i,1)=x(i)^2;
end
% We compute the solutions
p_std=inv(G'*G)*G'*f;
p_MatLab=G\f;
% We create the ellipse
[x1 x2]=xintv(p_MatLab); % The x interval from x1 to x2
xint=[x1:0.001:x2, x2];
[y1 y2]=Ellipse(xint,p_MatLab); % Two sets of y values making the upper and
under part of the ellipse
% plot(xint,y1)
% xlabel('x values')
% ylabel('y values')
% hold on
% plot(xint,y2)
% plot(x,y,'*')