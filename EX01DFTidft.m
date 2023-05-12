clc;
clear all;
close all;

x = input('Enter the Sequence x(n) = ');
N = input('Enter n: ');
disp(N);

subplot(3,1,1);
stem(0:length(x)-1, x);
xlabel('n');
ylabel('X(n)');
title('Input Signal');
grid on;

if N > length(x)
    x = [x, zeros(1, N-length(x))];
end

y = zeros(1, N);
for k = 0:N-1
    for n = 0:N-1
        y(k+1) = y(k+1) + x(n+1) * exp((-1i*2*pi*k*n)/N);
    end
end
disp(y);

subplot(3,1,2);
stem(0:N-1, abs(y));
xlabel('k');
ylabel('X(k)');
title('DFT Signal');
grid on;

M = length(y);
m = zeros(1, M);
for n = 0:M-1
    for k = 0:M-1
        m(n+1) = m(n+1) + (1/M)*y(k+1) * exp((1i*2*pi*k*n)/M);
    end
end
disp(m);

subplot(3,1,3);
stem(0:length(x)-1, real(m));
xlabel('n');
ylabel('Y(n)');
title('IDFT Signal');
grid on;
