function NewtonRaphson(fun, x0, n, tol)
syms x;
df = diff(fun);
for k = 1:n
  x1 = x0 - subs(fun, x0) / subs(df, x0);
  if (abs(x1 - x0) < tol)
    fprintf('x%d = %f es una aproximacion de una raiz\n', k, x1)
    return
  end
  fprintf('x%d = %f\n', k, x1)
  x0 = x1;
end