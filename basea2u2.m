%% Comentar el funcionamiento del progragrama
%Funcionamiento, inputs y outputs:
%Autores: Carlos Aurelio Núñez Viera
%Fecha: 25-06-2024
clear
clc
close all
%% Definir variables

% N° de repeticion
n=[1 2 3 4 5 6 7 8 9 10];

% Distancia [cm]
d=[30 40 50 60 70 80 90 100 110 120];

% Tiempo [s]
t=[0.3 0.41 0.5 0.56 0.69 0.72 0.82 1.04 1.19 1.22];

%% 2. Utilizando ciclos, calcular a y v:
a = (1:1:10);
v = (1:1:10);
for i = 1:1:10;
    a(i) = (2*a(i))/t(i)^2;
    v(i) = a(i)*t(i);
end

%% 3. Segun lo seleccionado por el usuario:

% a) Mostrar el vector seleccionado.

% b) Mostrar Grafico velocidad vs tiempo o Grafico aceleracion vs tiempo, segun lo seleccionado.

% c) Mostrar Graficos en formato subplot.

%% 1. Solicitar al usuario ingresar en minuscula a o v

answer = input("¿Aceleración o velocidad (a o v)?", "s");
if answer == "a"
    disp(a);
    % Creación de gráfico
    figure(1) %Declara nueva figura
    plot(t, a)
    % Etiquetas
    title("Tiempo vs. aceleración")
    xlabel("tiempo") 
    ylabel("aceleración")
    grid

elseif answer == "v"
    disp(v);
    % Creación de gráfico
    figure(2) %Declara nueva figura
    plot(t, v)
    % Etiquetas
    title("Tiempo vs. velocidad")
    xlabel("tiempo") 
    ylabel("velocidad")
    grid
else
    disp('Solo se admite la letra "a" o la letra "v". Reinicie el programa.')
end

