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

%singular value decomposition
[U,S,V]=svd(A);