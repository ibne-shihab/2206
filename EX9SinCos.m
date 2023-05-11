clc;
clear all;
close all;
t = [0:0.0001:0.2];
asin =input('Enter The AMPLITUDE of SINE wave :');
fsin = input('Enter The FREQUENCY of SINE wave :');
sphase=input('Enter The PHASE of SINE wave :');
sinwave = asin.*sin((2*pi*fsin*t)+sphase);
subplot(2,1,1);
plot(t,sinwave);
title(' The Sine Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;
acos =input('Enter The AMPLITUDE of COS wave :');
fcos = input('Enter The FREQUENCY of COS wave :');
cphase=input('Enter The PHASE of COS wave :');
coswave = acos.*cos((2*pi*fcos*t)+cphase);
subplot(2,1,2);
plot(t,coswave,'r');
title(' The COSINE Signal');
xlabel('Time');
ylabel('Amplitude');
grid on;