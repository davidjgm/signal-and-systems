close all
clc

t = -10:0.01:10;
% Onda seno
x1 = sin(2*pi*t/3);
figure
plot(t,x1)
title('sin(2*pi*t/3)')

% e^(-2t)cos(8t)
x2 = exp(-2*t).*cos(8*t);
figure
plot(t,x2)
title('e^(-2t)cos(8t)')

% Graficar e^(i*2*pi*t+3/4)
% Parte Real
x3 = exp(i*(2*pi*t+3/4));
figure
plot(t,real(x3))
title('Parte real de e^{(i*(2*pi*t+3/4))}')

% Parte Imaginaria
figure
plot(t,imag(x3))
title('Parte imaginaria de e^{(i*(2*pi*t+3/4))}')

% Magnitud 
figure
plot(t,abs(x3))
title('Magnitud e^{(i*(2*pi*t+3/4))}')

% Onda seno
x4 = sin(2*t);
x5 = sin(2*t + 2*pi);
figure
plot(t,x4,t,x5)
title('sin(2*t + 2*pi) tiene periodo \pi')
