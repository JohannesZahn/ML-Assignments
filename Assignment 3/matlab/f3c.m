function [mu_n, n] = f3c(samples)

%% Write results in these arrays
n = zeros(1,6);        %Sample sizes
mu_n = zeros(1,6);

%% Insert code here:
for i = 0:5
    mu_0 = -10;
    var_0 = 1;
    n(i+1) = 2^i*10;  
    sub_samples = samples(1: n(i+1));
    mu = mean(sub_samples);
    var_ = var(sub_samples);
    mu_n(i+1) = (n(i+1) * var_0) / (n(i+1) * var_0 + var_) * mu + var_/(n(i+1)*var_0+var_)* mu_0;   
end


end
