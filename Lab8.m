clc;
clear all;
close all;

%Program for the design of low pass butterworth filter
rp = input('Enter the passband ripple (dB): ');
rs = input('Enter the stopband attenuation (dB): ');

wa = input('Enter the stopband frequency (rad): ');
wp = input('Enter the passband frequency (rad): ');

fs = input('Enter the sampling frequency: ');

w1 = 2 * wp / fs;
w2 = 2 * wa / fs;

[n, wn] = buttord(w1, w2, rp, rs);				%for knowing the order of the butterwoth filter
[b, a] = butter(n, wn);						%Takes in two arguments, order and cutoff frequency, returns transfer function coefficients for the given filter

w = 0:0.1:pi;
[h, om] = freqz(b, a, w);						%gives us the frequency response and angular frequency of the given filter
m = 20 * log10(abs(h));						%abs() gives us the magnitude of the function
an = angle(h);								%gives us the phase of the system 

subplot(2, 2, 1);
plot(om / pi, m);
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title("Butterworth Low Pass Filter's Magnitude Response");

subplot(2, 2, 2);
plot(om / pi, an);
xlabel('Normalized Frequency');
ylabel('Phase in rad');
title("Butterworth Low Pass Filter's Phase Response");

%Program for highpass butterworth filter
[b, a] = butter(n, wn, 'high');				%'high' argument tells the function that we are now implementing a highpass butterworth filter

w = 0:0.1:pi;
[h, om] = freqz(b, a, w);						%gives us the frequency response and angular frequency of the given filter
m = 20 * log10(abs(h));						%abs() gives us the magnitude of the function
an = angle(h);								%gives us the phase of the system 

subplot(2, 2, 3);
plot(om / pi, m);
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title("Butterworth High Pass Filter's Magnitude Response");

subplot(2, 2, 4);
plot(om / pi, an);
xlabel('Normalized Frequency');
ylabel('Phase in rad');
title("Butterworth High Pass Filter's Phase Response");

