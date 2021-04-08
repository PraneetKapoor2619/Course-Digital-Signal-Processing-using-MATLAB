%To compute the DFT of a sequence
%Plot its magnitude and phase spectrum
%Compute its IDFT
clc;
clear all;
close all;

x = input('Enter the sequence: ');
fprintf('\n');
fprintf('%f', x);
N = length(x);
n = 0:1:N-1;
k = 0:1:N-1;
WN = exp(-j * 2 * pi / N);
nk = n.'*k;
WNnk = WN.^nk;
Xk = x*WNnk;
fprintf('\n\n');
fprintf('\n%f', Xk);
subplot(2, 1, 1);
stem(k, abs(Xk));
xlabel('k');
ylabel('|x(k)|');
title('Magnitude Spectrum');

subplot(2, 1, 2);
stem(k, angle(Xk));
xlabel('k');
ylabel('<X(k)');
title('Phase Spectrum');

%IDFT 
Xk = input('\nEnter the sequence: ');
N = length(Xk);
xn = idft(Xk, N);
fprintf('\nIDFT of X(k) is: \n');
fprintf('%f\n', xn);

function xn = idft(Xk, N)
    L = length(Xk);
    for k = 0:N-1
        for n = 0:N-1
            p = exp(j * 2 * pi * n * k / N);
            x2(k + 1, n + 1) = p;
        end
    end
    xn = (Xk * x2)/N;
end
