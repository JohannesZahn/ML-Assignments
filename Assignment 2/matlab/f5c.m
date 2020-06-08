function [train_mu, train_var] = f5c(dataset)

%% Write results in these arrays:
train_mu = zeros(1, 4, 3);
train_var = zeros(1, 4, 3);

%% Insert code here:
for class = 1:3
    for feature = 1:4
        train_mu(:, feature, class) = mean(dataset(:, feature, class));
        train_var(:, feature, class) = var(dataset(:, feature, class));
    end
end

end
