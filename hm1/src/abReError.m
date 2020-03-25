%error calculation

x=1:10;
% absolute error= approximate value-true value
absoluteerror= approximate(x)-exactv(x);
figure(1);
subplot(2,1,1);
plot(x,absoluteerror);
ylabel('absolute error');
xlabel('input');
grid;

% relative error=absolute error/true value
relativeerror=absoluteerror./exactv(x);
subplot(2,1,2);
plot(x,relativeerror);
ylabel('relative error');
xlabel('input');
grid;