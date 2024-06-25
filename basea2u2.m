%% Comentar el funcionamiento del progragrama
%Funcionamiento, inputs y outputs:
%Autores: Carlos Aurelio Núñez Viera
%Fecha: 25-06-2024
clear
clc
%% Definir variables

% N° de repeticion
n=[1 2 3 4 5 6 7 8 9 10];

% Distancia [cm]
d=[30 40 50 60 70 80 90 100 110 120];

% Tiempo [s]
t=[0.3 0.41 0.5 0.56 0.69 0.72 0.82 1.04 1.19 1.22];


%% 2. Utilizando ciclos, calcular a y v:


%% 3. Segun lo seleccionado por el usuario:

% a) Mostrar el vector seleccionado.

% b) Mostrar Grafico velocidad vs tiempo o Grafico aceleracion vs tiempo, segun lo seleccionado.

% c) Mostrar Graficos en formato subplot.

%% 1. Solicitar al usuario ingresar en minuscula a o v

answer = input("¿Aceleración o velocidad (a o v)?", "s");
if answer == "a"
    %disp(a);
    %plot(t, a);
elseif answer == "v"
    %disp(v);
    %plot(t, a);
else
    disp('Solo se admite "a" o "v".')
end
