%Program for designing low pass FIR filter using Hanning Window

clc;
clear all;
close all;

fc = 0.5; 							%half of sampling frequency
N = 11; 								%length of the window
wn1 = hanning(N);						%for designing hanning window
hn1 = fir1((N - 1), fc, wn1);			%for fir filter

subplot(2, 1, 1);
plot(hn1);
title('Response of Low Pass Filter using Hanning Window');

subplot(2, 1, 2);
plot(wn1);
title('Hanning Window');