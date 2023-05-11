clc;
clear all;
close all;

n = -3:1:9;
x = [1:1:7,6:-1:1];

subplot(4,1,1);
stem(n, x,'b');
title('The Otiginal Signal');
xlabel('[n]');
ylabel('x[n]');
grid on;
[x1, n1] = signalshift(x, n, 5);
subplot(4,1,2);
stem(n1,2.* x1,'m');
title('First Portion');
xlabel('[n-5]');
ylabel('x1[n]');
grid on;
[x2, n2] = signalshift(x, n, -4);
subplot(4,1,3);
stem(n2,3.* x2,'m');
title('Second Portion');
xlabel('[n+4]');
ylabel('x2[n]');
grid on;
[x3, n3] = signaladd(2*x1, n1, (-3)*x2, n2);
subplot(4,1,4);
stem(n3,x3,'r');
title('The Final Signal');
xlabel('[n]');
ylabel('y[n]');
grid on;

function [y, n] = signalshift(x, n, n0)
    n = n + n0;
    y = x;
end

function [y, n] = signaladd(x1, n1, x2, n2)
    n = min(min(n2), min(n1)):max(max(n2), max(n1));
    y1 = zeros(1, length(n));
    y1(n >= min(n1) & n <= max(n1)) = x1;
    y2 = zeros(1, length(n));
    y2(n >= min(n2) & n <= max(n2)) = x2;
    y = y1 + y2;
end
