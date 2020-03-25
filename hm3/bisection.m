function y=bisection(funcname,max_relative_err,number_of_iteration,a,b)

i=0;
fprintf('%6s%8s%8s%8s\n','a','b','fa','fb');
while (abs(a-b)>max_relative_err)&&(i<number_of_iteration)
    m=(a+b)/2;
    [fa]=feval(funcname,a);
    [fb]=feval(funcname,b);
    [fm]=feval(funcname,m);
    fprintf('%8.4f%8.4f%8.4f%8.4f\n',a,b,fa,fb);
    if sign(fa)==sign(fm)
        a=m;
    else
        b=m;
    end
end
y=m;
end