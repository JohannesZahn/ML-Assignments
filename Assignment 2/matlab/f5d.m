function [likelihood, class] = f5d(dataset, mu, var)

%% Write results in these arrays
likelihood = zeros(30, 3);
class = zeros(1, 30);

%% Insert code here:
likelihood = squeeze(prod(normpdf(dataset, mu, var), 2));
[M,I] = max(likelihood,[],2,'linear'); % value and index of the highest value among the classes
class = transpose(mod(I + 1, 3)); %classes are numbered from 0 to 2 in the order in which they are read into the input vector


end
