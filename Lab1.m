%these are the console commands
%erase results on console
clc
%remove all variables from memory (workspace)
clear all
%closes all the plots and figures
close all

matrix_1 = ones(5, 5)
matrix_2 = zeros(4, 4)
matrix_3 = ones(5, 1)
matrix_4 = zeros(1, 3)

x = [-3*pi : 0.01 : 3*pi]
f1 = sin(x)
f2 = cos(x)
f3 = tan(x)

subplot(3, 3, 1)
plot(x, f1, 'r')
xlabel("Rads")
ylabel("cont sine")

subplot(3, 3, 2)
plot(x, f2, 'b')
xlabel("Rads")
ylabel("cont cosine")

subplot(3, 3, 3)
plot(x, f3, 'g')
xlabel("Rads")
ylabel("cont tangent")


subplot(3, 3, 4)
stem(x, f1, 'r')
xlabel("Rads")
ylabel("disc sine")

subplot(3, 3, 5)
stem(x, f2, 'b')
xlabel("Rads")
ylabel("disc cosine")

subplot(3, 3, 6)
stem(x, f3, 'g')
xlabel("Rads")
ylabel("disc tangent")


subplot(3, 3, 7)
semilogx(f1)
xlabel("Rads")
ylabel("semlx sine")

subplot(3, 3, 8)
semilogx(f2)
xlabel("Rads")
ylabel("semlx cosine")

subplot(3, 3, 9)
semilogy(f3)
xlabel("Rads")
ylabel("semly tangent")