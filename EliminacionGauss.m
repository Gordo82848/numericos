function x = EliminacionGauss(A,B)
% ESTA FUNCION PIDE LOS SIGUIENTES DATOS DE ENTRADA:
% A = matriz cuadrada de coeficientes del sistema de ecuaciones.
% B = Vector columna de resultados de cada ecuación.
% VARIABLES DE SALIDA:
% x = vector con los valore para todas las variables del sistema de ecuaciones.

%~~~~~~~~~~~~~~~~~~Proteccion contra errores en las entradas~~~~~~~~~~~~~~~~~~%
if nargin ~= 2
  error('Se debe ingresar una matriz cuadrada A y un vector columna B');
% Si se ingresan todos los datos de entrada, elegir un metodo de solucion
else
  if size(A,1) ~= size(A,2)
    error('Se necesita que la matriz A sea cuadrada');
  elseif size(B,2) ~= 1
    error('B debe ser un vector columna');
  elseif size(A,1) ~= size(B,1)
    error('El numero de filas de A no coincide con el de B. Sistema inconsistente');
  end
end

disp(newline);
if prod(diag(A)) == 0
  error('El determinante de la matriz A es cero, no se puede resolver');
end

n = size(A,1); t = ' | '; T = repmat(t,n,1);
a = num2str(A); b = num2str(B); c = [a T b]; % Union de los datos en una sola matriz
disp('Sistema original'); disp(c); disp(newline);

%~~~~~~~~~~~~~~~~~~Eliminacion hacia adelante~~~~~~~~~~~~~~~~~~%
j = 1;
for k = 1:n - 1
  for i = k + 1:n
    factor = A(i,k) / A(k,k);
    A(i,:) = A(i,:) - factor * A(k,:);
    B(i) = B(i) - factor * B(k);
    c = [num2str(A), T, num2str(B)]; % Union de los datos en una sola matriz
    disp(['Paso ', num2str(j)]); disp(c); disp(newline);
    j = j + 1;
  end
end

%~~~~~~~~~~~~~~~~~~Sustitucion hacia atras~~~~~~~~~~~~~~~~~~%
x(n) = B(n) / A(n,n);
for i = n -1:-1:1
  sum = B(i);
  for j = i + 1:n
    sum = sum - A(i,j) * x(j);
  end
  x(i) = sum / A(i,i);
end
x = x';

%~~~~~~~~~~~~~~~~~~Impresion de resultados~~~~~~~~~~~~~~~~~~%
disp('Resultados');
for i = 1:n
  fprintf('x%d = %f', i, x(i));
  fprintf('\n');
end