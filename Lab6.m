clc;
clear all;
close all;


%Program for computing discrete linear convolution
x = input('Enter the first sequence x(n):');
h = input('Enter the second sequence h(n):');
y = conv(x, h);
subplot(3, 2, 1);
stem(x);
xlabel('n');
ylabel('Amplitude = x(n)');
title('Input signal x(n)');

subplot(3, 2, 2);
stem(h);
xlabel('n');
ylabel('Amplitude = h(n)');
title('Input signal h(n)');

subplot(3, 2, 3);
stem(y);
xlabel('n');
ylabel('Amplitude y(n)');
title('Discrete Linear Convolution');

%For computing circular convolution
y1 = cconv(x, h, 5);
subplot(3, 2, 4);
stem(y1);
xlabel('n');
ylabel('Amplitude = y1(n)');
title('Circular Convolution');