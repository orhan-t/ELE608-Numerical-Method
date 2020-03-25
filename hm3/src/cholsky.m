
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
