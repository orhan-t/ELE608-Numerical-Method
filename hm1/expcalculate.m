% exponential compute

k=1:20;
n=10.^k;
e=(1+1./n).^n;

error=exp(1)-e;
plot(k,error);
ylabel('Error');
xlabel('k');
grid;