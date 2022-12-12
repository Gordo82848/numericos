clear;
clc;

fprintf('\nTERCER APORTE');

prompt = "\n1-Metodo Gauss-Seidel\n2-Jacobi\n3-Jacobi-Gauss\n4-Jacobi-Gauss-Seidel\n5-Interpolacion\n6-Lagange\n7-Regresar al menu anterior\n8-SALIR";
x = input(prompt);

switch x
    case 1
        fprintf('\nMETODO DE GAUSS SEIDEL');
        A = [10 -4 2; 8, 2,-3; 4,-5, 2];
        B = [6,7,2]';
        x= [1, 1, 1]';
        y = GaussSeidel(A,B,x);
        y
    case 2
        fprintf('\nMETODO DE JACOBI');
        A = [5 -3 1; 2, 4,-1; 2,-3, 8];
        B = [5, 6,4]';
        x = [1, 1, 1]';
        y = Jacobi(A,B,x);
        y;
    case 3
        fprintf('\nJACOBI GAUSS');
        A = [5 -3 1; 2, 4,-1; 2,-3,8];
        B = [5, 6,4]';
        x= [1, 1, 1]';
        [y,k] = JacobiGauss(A, B, x,0.0001,20);
        y;
        k;
    case 4
        fprintf('\nMETODO DE GAUSS SEIDEL');
        %Parámetros para el ejemplo:
        A = [5 -2 2; 3 -2 -1; 2 -9 1];
        B = [3 -3 3]';
        x = [2 2 2]';
        JacobiGaussSeidel(A,B,x)
    case 5
        fprintf('\nINTERPOLACION');
        x = [2 2 2.5 3 7 4];
        y = [1.5 3 3 1 9 1];
        [y,k] = Interpolacion(x,y);
        y
        k
    case 6
        fprintf('\nMETODO DE LAGRANGE');
        a = [ 0 1 2 3 4 ];
        b = [-4.0 -4.9 -6.4 -4.9 5.6];
        lagrange(a,b,3);
    case 7
        menu;
    case 8
        fprintf('\nUsted decidio salir, Gracias');
    otherwise
        fprintf('\nOpcion no valida');
end