clc;
clear all;
close all;
asin = input('Amplitude of the Sinusoidal Wave: ');
fsin = input('Frequency of the Sinusoidal Wave: ');
T=1/fsin;
t=0:T/100:2*T;
sinwave = asin.*sin(2*pi*fsin*t);
subplot(4,1,1);
plot(t,sinwave,'b');
title('The Continuous Time Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
Ts=T/20;
Fs=1/Ts;
n=1:1:2*T/Ts;
sampledsignal=asin.*sin(2*pi*fsin*n*Ts);
subplot(4,1,2);
stem(n,sampledsignal,'b');
title('The Sampled Signal');
xlabel('Discrete Time');
ylabel('Amplitude');
grid on;
dcsample=asin+sampledsignal;
subplot(4,1,3);
stem(n,dcsample,'b');
title('DC Level Sampled Signal');
xlabel('Discrete Time');
ylabel('Amplitude');
grid on;
quantizedsignal = round(dcsample);
subplot(4,1,4);
stem(n,quantizedsignal,'r');
title('Quantized Discrete Time Signal');
xlabel('Discrete Time');
ylabel('Amplitude');
grid on;
coding = dec2bin(quantizedsignal);
disp('The Coded Values');
Binary=coding;
disp(Binary);
