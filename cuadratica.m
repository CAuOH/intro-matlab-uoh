% Actividad Evaluada 1
% Muestra N° soluciones de la ecuación cuadrática
% Carlos Núñez

% Limpia variables y consola
clear 
clc

% Pide coeficientes a usuario
disp("N° soluciones ecuación cuadrática")
a = input('Ingrese el coeficiente a: ');
b = input('Ingrese el coeficiente b: ');
c = input('Ingrese el coeficiente c: ');

% Calcula discriminante
delta = b.^2 - 4 * a * c;

% Compara discriminante con el cero
% Imprime cuántas soluciones implica la comparación
if delta > 0;
    disp("Dos soluciones reales diferentes")
elseif delta == 0;
    disp("Dos soluciones reales iguales")
elseif delta < 0;
    disp("Dos soluciones complejas diferentes")
else;
    % Error si el discriminante no cumple ninguna de las condiciones
    disp("Resultado inesperado. Reinicie el script e ingrese otros coeficientes.")
end
