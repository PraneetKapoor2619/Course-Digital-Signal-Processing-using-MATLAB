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

%Unit Impulse
n = -2:1:2;
I = [zeros(1, 2), ones(1,1), zeros(1, 2)];
subplot(3, 2, 3);
stem(n, I);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');

%Unit exponential (decaying)
t = 0:0.1:N;
a = 1;
y = exp(a * (-t));
subplot(3, 2, 4);
plot(t, y);
xlabel("Time");
ylabel("Amplitude");
title("Unit Exponential Signal");

%Sine signal at 1Hz
t = 0:0.01:N;
f = 1;
y = sin(2*pi*f*t);
subplot(3, 2, 5);
plot(t, y);
xlabel("Time");
ylabel("Amplitude");
title("Sine signal");

%Cosine signal at 1Hz
t = 0:0.01:N;
f = 1;
y = cos(2*pi*f*t);
subplot(3, 2, 6);
plot(t, y);
xlabel("Time");
ylabel("Amplitude");
title("Cosine signal");
