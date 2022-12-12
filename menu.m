clear;
clc;
prompt = "\nMENU\n1-PRIMER APORTE\n2-SEGUNDO APORTE\n3-TERCER APORTE\n4-SALIR";
x = input(prompt);

switch x
    case 1
        PrimerAporte;
    case 2
        SegundoAporte;
    case 3
        TercerAporte;
    case 4
        fprintf('\nUsted decidio salir, Gracias');
    otherwise
        fprintf('\nOpcion no valida');
end

