%Find out the magnitude response and phase response for any particular difference equation
%y(n) - 1/6 y(n - 1) - 1/6y(n - 2) = x(n) 

clc;
clear all;
close all;

b = input('Enter the coefficients of the numerator of the T.F.:');
a = input('Enter the coefficients of the denominator of the T.F.:');

[h, w] = freqz(b, a);				%split func. into freq response function
subplot(2, 1, 1);
plot(w/pi, abs(h));
grid;		%switch on the grid lines
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
title('Magnitude Response');

subplot(2, 1, 2);
plot(w/pi, angle(h));
grid;
xlabel('Normalized frequency');
ylabel('Phase in rad');
title('Phase Response');