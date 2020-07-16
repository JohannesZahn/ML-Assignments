clc
D = [2,4,5,8,15];
x_ax = linspace(0,20,100);
sigma = 1;
pdf = zeros(1,100);
hold on
for x_i = D
    f = zeros(1,100);
    idx = 1;
    for x = x_ax
        f(idx) = (1/(sqrt(2*pi)*sigma)*exp(-((x-x_i)^2)/(2*sigma^2)))/size(D,2);
        idx = idx + 1;
    end
    plot(x_ax,f,'b')
    pdf = pdf +f;
end
plot(x_ax,pdf,'r')
hold off

M = [0,0;7,7;30,20;14,40];
for x = M.'
    f2b(x)
end