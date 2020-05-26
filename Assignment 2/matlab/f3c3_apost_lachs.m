function [apost_lachs] = f3c3_apost_lachs(x)

%% return a function!
likelihood = f3c1_likelihood_lachs(x);
evidence = f3c2(x);
apost_lachs = (likelihood .* 0.5)./ evidence;

end

