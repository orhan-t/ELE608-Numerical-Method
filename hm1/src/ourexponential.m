function y= ourexponential(x)
y=0;
n=1;
while(1)
    if (x.^(n-1))/factorial(n-1)==0
        break;
    else
    y=y+(x.^(n-1))/factorial(n-1);
    end
     n=n+1;
end
end