% Octave Script 
% Title          :Resolucion de desigualdades 
% Descripcion    :Script para resolver inecuaciones desde octave
% Author         :Hector Daniel Marmoleo Garcia 
%                :Camila Cruz Jimenez
%                :David Garcia Rodriguez 
% Date           :20211007
% Version        :1
% Usage          :octave> cd /path/
%                :octave> ResolucionDesigualdadesE
% Notes          :Requiere aplicacion octave
%   
syms x
disp('Solucion a la inecuacion numero 1 "Incecuacion lineal con una incognita"');
x + 2 <= 0
solve( x + 2 <= 0)

disp('Solucion a la inecuacion numero 2 "Incecuacion cuadratica con una incognita"');
x^2 + 3 >= 12
solve(x^2 + 3 >= 12)

disp('Solucion a la inecuacion numero 3 "Incecuacion con un valor absoluto"');
abs(x) < 5
solve(abs(x) < 5)


hold on
plot([-20 5],[0,0],'k+-',"linewidth",3,"markersize",12)
plot([0 0],[-20 30], 'k-',"linewidth",3)

x = -20:0.01:11;
y = x + 2;
plot(x,y,"linewidth",2) 

x = -100:1:100;
f = 'x.^2 + 3';
fplot(f,"linewidth",2);

x = -100:1:100;
y2 = abs(x) < 5;
plot(x,y2,"linewidth",2)

hold off
