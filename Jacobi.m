% implementación del método de jacobi( f. algebraica)
function x = Jacobi(A,B,x)
    n= length(x);
    t = x;
    for i = 1:n
    s= A(i,1:i-1)*t(1:i-1)+A(i,i+1:n)*t(i+1:n);
    x(i)= (B(i)-s)/A(i,i);
end

% Ejemplo aplique el algoritmo para resolver
% A = [5 -3 1; 2, 4,-1; 2,-3, 8];
% B = [5, 6,4]'; % B= [5; 6;4];
% x= [1, 1, 1]'; % x= [1; 1; 1];
% x = Jacobi(A, B, x)