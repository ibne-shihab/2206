clc;
clear all;
close all;
t = -2:0.01:2;
x = 4*sinc(4*t);
subplot(3,1,1);
plot(t,x,'b');
xlabel('Time');
ylabel('Amplitude');
title('Real Part');
grid on;
subplot(3,1,2);
plot(t,abs(x),'b');
xlabel('Time');
ylabel('Amplitude');
title('Amplitude Part');
grid on;
subplot(3,1,3);
plot(t,angle(x),'b');
xlabel('Time');
ylabel('Amplitude');
title('Phase Part');
grid on;