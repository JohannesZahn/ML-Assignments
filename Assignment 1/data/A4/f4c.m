function [rho] = f4c(wuerfe, histo)
rho=histo/sum(histo);
stem(rho);
end

