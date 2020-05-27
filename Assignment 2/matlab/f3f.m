function [prob_barsch, prob_lachs] = f3f(fishclass)
barsch_count = size(fishclass(fishclass == 'Barsch'),1);
lachs_count = size(fishclass(fishclass == 'Lachs'),1);
overall_count = size(fishclass,1);
prob_barsch = barsch_count/overall_count;
prob_lachs = lachs_count/overall_count;
% Barsch hat eine Wahrscheinlichkeit von 62.6% und Lachs von 37.8%.
% Wir haben angenonmmen dass die Verteilung 50%/50% ist also würden wir
% jetzt eine solche Verteilung erwarten. Das bedeutet unsere Annahmen waren
% falsch wodurch wir eine falsche Apsteriori Wahrscheinlichkeit berechnet 
% und somit nicht optimal klassifiziert haben, oder die Daten sind nicht 
% repräsentativ, da z.B. auch andere Fische als Barsche und Lachse 
% gefangen wurden. 
end