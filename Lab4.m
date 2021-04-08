%To compute the circular convolution of two sequences
clc;
clear all;
close all;

xn1 = [1, 2, -2, 1, 0, 0, 0];
xn2 = [1, 1, 0, 0, 0, 0, 0];
%use FFT to compute DFT of sequences
XK1 = fft(xn1);
XK2 = fft(xn2);
YK = XK1 .* XK2;
yn = ifft(YK);
fprintf('\n%f', yn);
%plot the result
n = 1:7;
stem(n, yn);
xlabel('Sample');
ylabel('Amplitude');
title('Circular Convolution');