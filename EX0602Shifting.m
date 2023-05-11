clc;
clear all;
close all;
n =-2:3;
x = [1 2 3 4 5 6];
k = input('Enter the value of k :');
subplot(2,1,1);
stem (n,x,'b');
xlabel('n');
ylabel('x[n]');
title('The Input Signal');
grid on;
[y,m]=signalshift(x,n,k);
subplot(2,1,2);
stem(m,y,'r');
xlabel('[n-k]');
ylabel('y[n-k]');
title('The Output Shifted Signal');
grid on;
function [y,m]= signalshift(x,n,k)
    m=n+k;
    y=x;
end