clc;
clear all;
close all;
t = -20 : 1 :20;
unitstep = t>=0;
impulse = t==0;
unitramp = t.*unitstep;
subplot(3,1,1);
stem(t,unitstep,'b');
xlabel('[n]');
ylabel('X[n]');
title('Discrete Time Unit Step Signal');
grid on;
ylim([0,2]);
subplot(3,1,2);
stem(t,impulse,'m');
xlabel('[n]');
ylabel('X[n]');
title('Discrete Time Unit Impulse Signal');
grid on;
ylim([0,2]);
subplot(3,1,3);
stem(t,unitramp,'r');
xlabel('[n]');
ylabel('r[n]');
title('Discrete Time Unit Ramp Signal');
grid on;
ylim([0,20]);