function  z =newton_2(f,df,x0, tol,max1)
disp(' k x0 feval(f,x0) feval(df,x0) err ');
fprintf('\n');
for k=1:max1
 x1= x0-feval(f,x0)/feval(df,x0);
 err= abs(x1-x0)/abs(x1);
 relerr= 2*err/(abs(x1)+eps);
 x0=x1;
 %y= feval(f,x0);
 disp( [k, x0, feval(f,x0), feval(df,x0), err ]);
 if(err<=tol)
 break,
 end
end
 fprintf('raiz en ,%3d, iteraciones es igual = %5.5f\n', k, x0);
end