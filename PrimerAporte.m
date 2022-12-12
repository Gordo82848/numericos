clear;
clc;

fprintf('\nPRIMER APORTE');

prompt = "\n1-Enseñanza de matlab\n2-Teoria de errores\n3-Punto flotante\n4-Serie de taylor\n5-Regresar al menu anterior\n6-SALIR";
x = input(prompt);

switch x
    case 1
        fprintf('\nENSEÑANZA DE MATLAB');
        web('https://matlabacademy.mathworks.com/es/details/matlab-onramp/gettingstarted')
    case 2
        syms y;
        syms x;
        fprintf('\nTeoria de Errores\nHablaremos de error absoluto y relativo');
        fprintf('\nLa formula del error absoluto es \n');
        ER = abs(x-y);
        pretty(ER)
        fprintf('\nLa formula del error relativo es \n');
        EA = abs(x-y)/abs(x);
        pretty(EA)
    case 3
        fprintf('\nLos números que se representan en el formato doble tienen una precisión máxima de 52 bits. Cualquier doble que requiera más de 52 bits pierde algo de precisión. Por ejemplo, el siguiente código muestra cómo dos valores desiguales son idénticos porque ambos están truncados:');
        fprintf('\nx = 36028797018963968;');
        fprintf('\ny = 36028797018963972;');
        fprintf('\nx == y;');
        fprintf('\nans =');
        fprintf('\n      1');
        fprintf('\n');
        fprintf('\nLos números enteros tienen precisiones disponibles de 8 bits, 16 bits, 32 bits y 64 bits. Si se almacenan los mismos números como enteros de 64 bits, se mantiene la precisión:');
        fprintf('\nx = uint64(36028797018963968);');
        fprintf('\ny = uint64(36028797018963972);');
        fprintf('\nx == y');
        fprintf('\nans =');
        fprintf('\n      0');
    case 4
        fprintf('\nSERIE DE TAYLOR');
        syms x
        f = 1/cos(x)-sin(x);
        t = taylor(f,'Order',4,'ExpansionPoint',1);
        pretty(t)
    case 5
        menu;
    case 6
        fprintf('\nUsted decidio salir, Gracias');
    otherwise
        fprintf('\nOpcion no valida');
end
