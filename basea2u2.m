%% Comentar el funcionamiento del progragrama
%Funcionamiento, inputs y outputs:
%Contiene 10 datos del tiempo y distancia recorrida de un autito.
%Calcula 2 vectores con su aceleración y velocidad usando fórmulas y ciclos for.
%Toma como input el string a o el v
%Dependiendo de la elección, muestra el vector con la información deseada y su gráfico.
%Finalmente, muestra gráficos de distancia, velocidad, aceleración y los 3 juntos vs tiempo.
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
%Inicializa los vectores
a = (1:1:10);
v = (1:1:10);
%Asigna cada valor al calculado con la fórmula
for i = 1:1:10;
    a(i) = (2*d(i)) / (t(i)^2);
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
    %Creación de gráfico velocidad
    figure(1) %Declara nueva figura
    plot(t, a, "-r.") %El argumemto final es el formato y la inicial del color en inglés.
    %Etiquetas
    title("Aceleración vs. tiempo")
    xlabel("Tiempo [s]") 
    ylabel("Aceleración [cm/s^2]")
    grid
elseif answer == "v"
    disp(v);
    %Creación de gráfico aceleración
    figure(2) % Declara nueva figura
    plot(t, v, "-g.")
    %Etiquetas
    title("Velocidad vs. tiempo")
    xlabel("Tiempo [s]") 
    ylabel("Velocidad [cm/s]")
    grid
else
    disp('Solo se admite la letra "a" o la letra "v". Reinicie el programa.')
end

%Muestra los 4 gráficos en una figura
figure(3) %Declara nueva figura
subplot(2,2,1) %Plot 1 distancia
plot(t, d, "-b.");
title("Distancia vs. tiempo")
xlabel("Distancia [cm]") 
ylabel("Tiempo [s]")
grid
subplot(2,2,2) %Plot 2 velocidad
plot(t, v, "-r.")
title("Velocidad vs. tiempo")
xlabel("Velocidad [cm/s]") 
ylabel("Tiempo [s]")
grid
subplot(2,2,3) %Plot 3 aceleración
plot(t, a, "-g.")
title("Aceleración vs. tiempo")
xlabel("Aceleración [cm/s^2]") 
ylabel("Tiempo [s]")
grid
subplot(2,2,4) %Plot 4 combimnado
hold on %Combina plots
plot(t, d, "-b.")
plot(t, v, "-r.")
plot(t, a, "-g.")
hold off
% Etiquetas
title("Distancia, Velocidad y Aceleración vs. Tiempo") %etiquetas de gráfico combinado
xlabel("Valor") 
ylabel("Tiempo [s]")
grid
