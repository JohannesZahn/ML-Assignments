function [F] = f4d(rho)
F = cumsum(rho);
stem(F)
end

