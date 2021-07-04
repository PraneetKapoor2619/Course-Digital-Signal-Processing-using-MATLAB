%Program for designing bandstop (notch) butterworth filter

clc;
clear all;
close all;

alphap = input('Enter passband attenuation in dB:');
alphas = input('Enter stopband attenuation in dB:');
wp = [0.2 * pi, 0.4 * pi];					%Pass band frequancy
ws = [0.1 * pi, 0.5 * pi];					%Stop band frequency

[n , wn] = buttord(wp / pi, ws / pi, alphap, alphas);		%find cutoff freq. and order of the filter
[b, a] = butter(n, wn, 'stop');						%system function of the filter

w = 0:0.1:pi;
[h, ph] = freqz(b, a, w);
m = 20 * log10(abs(h));
an = angle(h);

subplot(2, 1, 1);
plot(ph / pi, m);
grid;
xlabel('Normalized Frequency');
ylabel('Gain in dB');

subplot(2, 1, 2);
plot(ph / pi, an);
grid;
xlabel('Normalized Frequency');
ylabel('Phase in Radians');