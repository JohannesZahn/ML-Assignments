function [class] = f2b(x)

D1 = normr(csvread('D1.csv'));
D2 = normr(csvread('D2.csv'));

if norm(x) ~= 0 % normalize
    x = x/norm(x);
end
x
omega_d1 = 0;
for pattern = D1.'
    omega_d1 = omega_d1 + exp(pattern.'*x-1);
end

omega_d2 = 0;
for pattern = D2.'
    omega_d2 = omega_d2 + exp(pattern.'*x-1);
end

if omega_d1>omega_d2
    class = 'd1';
else
    class = 'd2';
end
