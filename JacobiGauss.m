function [x,k] = JacobiGauss(A,B,x,e,m)
n= length(x);
for k = 1:m
 t = x;
 for i = 1:n
s= A(i,1:i-1)*t(1:i-1)+A(i,i+1:n)*t(i+1:n);
x(i)= (B(i)-s)/A(i,i);
 end
if norm((x-t),inf)< e

 return
end
end
x= [];
k= m;