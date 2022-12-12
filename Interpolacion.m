function [R,T] = Interpolacion(X, Y)
    % Datos:
    % X: es el vector con las Xi
    % Y: es el vector con las Yi
    n = length (X);
    if (n ~= length(Y))
        disp. ('Tamaños inconsistentes...')
        return
    end
    T = zeros (n, n);
    T (:, 1) =Y';
    % Determina La tabla de las diferencias Divididas
    for j=2:n % columna
        for k=j:n % número de diferencias
            i = k-j+1; % fila en la matriz de diferencias
            T(i, j) = ( T(i+1,j-1) - T(i, j-1) )/( X(k) - X(i) );
        end
    end
    % Determina el Polinomio
    P=zeros (n, n);
    i=1;
    for j = n-1: -1:1
        P (i, i:n) = T(1, j+1) * poly (X(1:j));
        i=i+1;
    end
    P(n, n)=T(1, 1);
    R=zeros(1, n);
    for i=1:n
        R = R + P (i, :);
    end
end