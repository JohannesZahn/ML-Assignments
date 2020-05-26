function [DiceRoll] = f4e(F, rnd)
F = cat(2,[0], F);  % prepend a 0 so if the value is smaller than
                    % the lowest F value the function still works
X = flip([1:10]); % flip X values which resemble the eyes of the dice
DiceRoll = X(find(flip(F)<rnd,1)-1); % draw the number for the probability
                                     % that is one higher than the first
                                     % probability lower than the random
                                     % number
end