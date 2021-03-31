%To plot the given signals on MATLAB
clc
clear all

%Unit Step
N = input('Enter the length of the sequence:');
n = 0:N;
s = ones(1, N+1)
subplot(3, 2, 1);
plot(n, s);
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');

%Unit Ramp
fprintf("n %f", n);
r = n;
fprintf("\n");
fprintf("r %f", r);
subplot(3, 2, 2);
plot(n, r);
xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp Signal');
