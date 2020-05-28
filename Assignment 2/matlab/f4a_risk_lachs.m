function [risk_lachs] = f4a_risk_lachs(x)

%% return a function!
loss_if_barsch = 0.5;
risk_lachs = loss_if_barsch * f3c3_apost_barsch(x); %% +0*apost_lachs

end