clc;
clear all;
close all;

x1 = input('Enter sequence 1:');

x2 = input('Enter Sequence 2:');

subplot(2, 2, 1);
stem(x1);
xlabel("n");
ylabel("Amplitude");
title("Sequence 1");
hold on;

subplot(2, 2, 2);
stem(x2);
xlabel("n");
ylabel("Amplitude");
title("Sequence 2");
hold on;

y1 = xcorr(x1, x1);
subplot(2, 2, 3);
stem(y1);
xlabel("n");
ylabel("Amplitude");
title("Auto-Correlation");
hold on;

y2 = xcorr(x1, x2);
subplot(2, 2, 4);
stem(y2);
xlabel("n");
ylabel("Amplitude");
title("Cross-Correlation");
hold on;