function [class] = f5b(x)

D1 = normr(csvread('D1.csv'));
D2 = normr(csvread('D2.csv'));

sigma = 1;
class = [];

for i = x
    p1 = exp(-(repmat(i.',size(D1,1),1) - D1).^2 / (2 * sigma^2));
    p2 = exp(-(repmat(i.',size(D2,1),1) - D2).^2 / (2 * sigma^2));

    avg1 = sum(p1) / size(p1);
    avg2 = sum(p2) / size(p2);
    
    [~,I] = max([avg1 avg2]);
    class = [class I];
end 


end
