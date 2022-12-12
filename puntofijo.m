function [xk]=puntofijo(x0,tol,n)
format long

fprintf('  n       x_n        Eabs    Erral_n\n')
for k=1:n
    xk=funcion(x0);
    Eabs=abs(xk-x0);
    Erel=Eabs/abs(xk);
    fprintf('%3.0f %10.10f %10.10f %10.10f\n', k, xk, Eabs, Erel)
    if Erel<tol
        fprintf('el valor de la aproximacion es:\n')
        return
    else
        x0=xk;
    end
end
fprintf('se alcanzo el numero maximo de iteraciones')
end
