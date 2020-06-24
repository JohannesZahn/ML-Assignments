function [n_dim] = f4c(sc)

var = sum(sc) % Streuung berechnen
comb_cnt = size(sc).^2; % Anzahl möglicher Kombinationen von Haupkomponenten
combs = dec2bin(0:comb_cnt-1)=='0'; % Generieren aller Kombinationen
                                   % als Wahrheitstabelle
n_dim=combs(((combs*sc)/var)>=0.95,:); % Selektieren alle Kombinationen, die 
                                      % zusammen mindestens 95% Streuung
                                      % abdecken
end
