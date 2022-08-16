% ============================================================
% CURSO: SEÑALES Y SISTEMAS
% GRUPO: 51
% SEMESTRE: 2022-3
% PROFESOR: DAVID JULIAN GONZÁLEZ MALDONADO
% ============================================================

close all % Cierro todas las ventanas
clc % Limpio el Command Window

t = -10:0.01:10; % Creo un vector de tiempo de 0 a 10, en interv. de 0.01

% Onda seno x1 = sin(2*pi*t/3)
x1 = sin(2*pi*t/3);
figure
plot(t,x1)
title('sin(2*pi*t/3)')

% x2 = e^(-2t)cos(8t)
x2 = exp(-2*t).*cos(8*t);
figure
plot(t,x2)
title('e^{(-2t)cos(8t)}')

% Graficar Re(x3),Im(x3),|x3|,<x3 de x3 = e^(i*2*pi*t+3/4)
% Parte Real de 
x3 = exp(1i*(2*pi*t+3/4));
figure
plot(t,real(x3))
title('Parte real de e^{(i*(2*pi*t+3/4))}')

% Parte Imaginaria de x3 = e^(i*2*pi*t+3/4)
figure
plot(t,imag(x3))
title('Parte imaginaria de e^{(i*(2*pi*t+3/4))}')

% Magnitud de x3 = e^(i*2*pi*t+3/4)
figure
plot(t,abs(x3))
title('Magnitud e^{(i*(2*pi*t+3/4))}')

% Onda seno x4 = sin(2*t)
x4 = sin(2*t);
x5 = sin(2*t + 2*pi);
figure
plot(t,x4,t,x5)
title('sin(2*t + 2*pi) tiene periodo \pi')

% ------------------------------------------
% CLASE 12/08/2022
% ------------------------------------------
t=-pi/4:0.01:5*pi/4;
x=sin(8*t);
plot(t,x)
hold on
x2=sin(8*(t-pi/50));
plot(t,x2)
legend('sen(8*t)','sen(8*(t+pi/50)')
title('Desplazamiento a la derecha')

