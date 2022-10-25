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

% Transformada de Fourier en tiempo discreto
a = 0.2;
omega = -pi:0.01:pi;
X = 1./(1-a*exp(-1i*omega));
%plot(omega,abs(X))

% Transformada de Fourier en tiempo continuo
a=5;
omega = -100:0.01:100;
X = 1./(a + 1i*omega);
plot(omega,imag(X))


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

% ------------------------------------------
% CLASE 19/08/2022
% ------------------------------------------

t = 0:0.001:50;
n = 0:200;
omega0A = pi/3;
omega0B = 1/3

% Exponencial Compleja Continua
xA = exp(1i*omega0A*t);
xB = exp(1i*omega0B*t);
figure
plot(t,real(xA))
title('e^{(j*pi*t/3)}')
figure
plot(t,real(xB))
title('e^{(j*t/3)}')

% Exponencial Compleja Discreta
xA2 = exp(1i*omega0A*n);
xB2 = exp(1i*omega0B*n);
figure
stem(n,real(xA2))
title('e^{(j*pi*n/3)}')
figure
stem(n,real(xB2))
title('e^{(j*n/3)}')

% ------------------------------------------
% CLASE 23/09/2022
% EJEMPLO GUIA PARA EL EJERCICIO DEJADO PARA EL DÍA 30/09/2022
% ------------------------------------------

% Graficar ak = (e^(j*pi*k/4)+e^(-j*pi*k/4))/(e^(j*pi*k/2)+e^(-j*pi*k/2))
k=-20:20;
ak = (exp(1i*pi*k/4)+exp(-1i*pi*k/4))./(exp(1i*pi*k/2)+exp(-1i*pi*k/2))
stem(k,ak)

% ------------------------------------------
% CLASE 21/10/2022
% ------------------------------------------
% x[n]=0.1^2 -->> X(omega) continuo
w=0:0.001:2*pi;
plot(w,abs(1./(1-0.1*exp(-1i*w))));ylim([0 1.2])
hold on
% x[n]=0.1^2 -->>  X(k) Discreto
n=0:50;
X=fft(0.1.^n);
w2=linspace(0,2*pi,length(X));
stem(w2,abs(X))
hold off
