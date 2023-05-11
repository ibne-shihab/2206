clc;
clear all;
close all;
n1=0:7;
x1=[0 1 2 3 4 3 2 1];
subplot(3,1,1);
stem(n1,x1,'b');
title('The First Signal');
xlabel('[n]');
ylabel('x1[n]');
grid on;
n2=-3:4;
x2=[4 3 2 1 0 3 2 1];
subplot(3,1,2);
stem(n2,x2,'b');
title('The Second Signal');
xlabel('[n]');
ylabel('x2[n]');
grid on;
[x3, n3] = signaladd(x1, n1,x2, n2);
subplot(3,1,3);
stem(n3,x3,'r');
title('The Addition of Signals');
xlabel('[n]');
ylabel('y[n]');
grid on;

function [y, n] = signaladd(x1, n1, x2, n2)
    n = min(min(n2), min(n1)):max(max(n2), max(n1));
    y1 = zeros(1, length(n));
    y1(n >= min(n1) & n <= max(n1)) = x1;
    y2 = zeros(1, length(n));
    y2(n >= min(n2) & n <= max(n2)) = x2;
    y = y1 + y2;
end