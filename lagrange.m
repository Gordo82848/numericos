function y = lagrange (X, Y, a)
% Determina el valor evaluado en el punto 'a ', del polinomio de interpolación de Lagrange.
% Datos:
% X: es el vector con las Xi
% Y: es el vector con las Yi
% a: punto a evaluar
%Resultado:
% y: valor de interpolacion
% Ejemplo:
% > > x [ 0 1 2 3 4 ]
% >> y = [-4.0 -4.9 -6.4 -4.9 5.6]
% >> lagrange (x, y, 2)
n = length (X);
if (n ~= length(Y))
disp ('Tamaños inconsistentes...') 
return
end 
y = 0;
for i=1:n
 L = 1;
for j=1:n
 if (j ~= i)
L = L * (a - X (j)) / (X (i) - X (j));
 end
end
y = y + L*Y (i);
end