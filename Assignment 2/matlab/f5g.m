function [class] = f5g(train_dataset, mu, test_dataset)

%% Write results in this array
class = zeros(1, 30);

%% Insert code here:
classes = zeros(3,size(test_dataset,1));
for c = 1:3
    covariance = cov(train_dataset(:,:,c));
    classes(c,:) = mvnpdf(test_dataset, mu(:,:,c), covariance);
end

[M,I] = max(classes,[],1,'linear'); % value and index of the highest value among the classes
class = mod(I + 1, 3); %classes are numbered from 0 to 2 in the order in which they are read into the input vector


end
