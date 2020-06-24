function [mu1, mu2, scatter_w, scatter_b] = f5b(c1, c2)

mu1 = mean(c1);
mu2 = mean(c2);

scatterW1 = getScatter(c1);
scatterW2 = getScatter(c2);

scatter_w = scatterW1 + scatterW2;
scatter_b = (mu1-mu2)' * (mu1-mu2);      %Transpos. invertiert, VL arbeitet mit Zeilen, hier Spaltenvektoren
end

function scatter = getScatter(c)
m = mean(c);
scatter = 0;
for i=1:size(c,1)   %for every row in data
    x = c(i,:);     %get x
    scatter = scatter + ( (x-m)' * (x-m) );     %compute scatter sum over all x         %invertiert s.o.
end

end
