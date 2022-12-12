function X = EcuaGaussJordan(A)
% Datos:
% X: solución del sistema lineal AX=B,
% A: es una matriz de coeficientes y termino independiente(matriz ampliada)
% n: numero de ecuaciciones
% m: numero de columnas

n = length(A);
m = size(A);
m= m(1,1);

for k = 1:n - 1
  for i = 1:n - 1
    if abs(i - k) > 0
      f = -A(i,k) / A(k,k);
      for j = k:n
        A(i,j)= f*A(k,j)+ A(i,j);
      end
    end
  end
  g = A(k,k);
  for j = k:n
    A(k,j)= A(k,j)/g;
  end
end
for i = 1:m
  B(i,1)= A(i,n);
end
X = B;
end