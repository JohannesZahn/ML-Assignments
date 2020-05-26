function [apost_barsch] = f3c3_apost_barsch(x)

%% return a function!
likelihood = f3c1_likelihood_barsch(x);
evidence = f3c2(x);
apost_barsch = (likelihood .* 0.5)./ evidence;
end

