x=[-20,-15,-10,-5,-1,1,5,10,15,20];

e1=ourexponential(x);
e2=exp(x);
error=e2-e1;

plot(x,error);
xlabel('input');
ylabel('error')
grid;