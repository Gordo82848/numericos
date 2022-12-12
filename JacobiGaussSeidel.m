function x = JacobiGaussSeidel(A,B,x)
n= length(x);
for i = 1:n
% usa el vector x actualizado
s= A(i,1:i-1)*x(1:i-1)+A(i,i+1:n)*x(i+1:n);
x(i)= (B(i)-s)/A(i,i);
end
