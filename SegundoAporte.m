clear;
clc;

fprintf('\nSEGUNDO APORTE');

prompt = "\n1-Biseccion\n2-Punto fijo\n3-Newton Raphson\n4-Metodo de Gauss\n5-Metodo de Gauss-Jordan\n6-Regresar al menu anterior\n7-SALIR";
x = input(prompt);

switch x
    case 1
        fprintf('\nBISECCION');
        syms x
        
        f=x^3+4*x^2-10;
        
        fplot(f,[0 2],LineWidth=3);grid on;
        title('Metodo de Biseccion',f,FontSize=16);
        ylabel('f(x)');xlabel('x');hold on
        
        xl=0;
        xu=2;
        
        
        fxl=double(subs(f,xl));
        fxu=double(subs(f,xu));
        
        
        iter=1;
        
        while iter<11
            if (fxl*fxu<0)
                xr=(xl+xu)/2;
                fxr=double(subs(f,xr));
        
            if (fxl*fxr<0)
                xu=xr;
                else if(fxl*fxr>0)
                        xl=xr;
                else if(fxl*fxr==0)
                        disp("se detiene el Algoritmo")
                end
                end
            end
            end
        
            plot(xr,fxr,'+',LineWidth=4)
            legend(['raiz x=' num2str(xr)],FontSize=12);
            iteracion(iter,1)=iter;
            Val_xl(iter,1) = xl;
            Val_xu(iter,1) = xu;
            Raiz(iter,1) = xr;
            T = table(iteracion,Val_xl,Val_xu,Raiz)
            iter=iter+1;
        
            pause
            
        end
    case 2
        fprintf('\nPUNTO FIJO');
        syms x
        Fx=x^2+2*x^2+10*x-20;
        Gx=20/(x^2+2*x+10);
        fx=inline(Fx);
        gx=inline(Gx);
        xo=2;
        for i=1:20
            x=gx(xo);
            d=abs(x-xo);
            xo=x;
            
            disp([xo d]);
        end
    case 3
        fprintf('\nNEWTON RAPHSON');
        syms x;
        fun = x^3 - 2*x - 5;
        NewtonRaphson(fun, pi, 5, 0.00001)
    case 4
        fprintf('\nMETODO DE GAUSS');
        A = [ 1 1 1 ; 3 -2 -1; -2 1 2];
        B = [2;4;2 ];
        EliminacionGauss(A,B);
    case 5
        fprintf('\nMETODO DE GAUSS-JORDAN');
        C = [4 2 5; 2 4 8; 2 4 3];
        D = [18 27.3 16.2]';
        A = [C D];
        X = EcuaGaussJordan(A);
    case 6
        menu;
    case 7
        fprintf('\nUsted decidio salir, Gracias');
    otherwise
        fprintf('\nOpcion no valida');
end