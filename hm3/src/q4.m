clear all;
clc;
b=[0.27;0.25;3.33];
A=[0.16,0.1;0.17,0.11;2.02,1.29]; 
b=A'*b;
[m,n]=size(A);
B=zeros(n);

%find B=A'*A
for i=1:m
    for j=1:n
        for k=1:n
            B(j,k)=B(j,k)+A(i,k)*A(i,j);
        end
    end
end

%cholesky factorization
[m,n]=size(B);
for k=1:n
    B(k,k)=sqrt(B(k,k));
    for i=k+1:n
        B(i,k)=B(i,k)/B(k,k);
    end
    for j=k+1:n
        for i=k+1:n
            B(i,j)=B(i,j)-B(i,k)*B(j,k);
        end
    end
end

% L=B and U=L'
%forward subsitition
% Ly=b
for j=1:n
    if B(j,j)==0
        break;
    end
    y(j)=b(j)/B(j,j);
    for i=j+1:n
        b(i)=b(i)-B(i,j)*y(j);
    end
end

%backward subsitition
% Ux=y
U=B';
for j=n:-1:1
    if U(j,j)==0
        break;
    end
    x(j)=y(j)/U(j,j);
    for i=1:j-1
        y(i)=y(i)-U(i,j)*x(j);
    end
end
