clc;
clear all;
close all;

n = 0:7;
x = [1 3 5 7 9 11 13 15];

subplot(2,1,1);
stem(n, x, 'b');
title('The Original Signal');
xlabel('n');
ylabel('x[n]');
grid on;

m = -fliplr(n);
y = fliplr(x);

subplot(2,1,2);
stem(m, y, 'r');
title('The Folded Output Signal');
xlabel('n');
ylabel('y[n]');
grid on;
