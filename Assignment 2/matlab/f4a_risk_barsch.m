function [risk_barsch] = f4a_risk_barsch(x)

%% return a function!
loss_if_lachs = 1.2;
risk_barsch = loss_if_lachs * f3c3_apost_lachs(x); %% +0*apost_barsch

end