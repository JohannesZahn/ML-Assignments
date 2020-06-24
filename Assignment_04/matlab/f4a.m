function [dataset] = f4a()

%% Don't edit! Ready for use.
dataset = [csvread('trainingSetosa.csv'); csvread('trainingVersicolor.csv'); csvread('trainingVirginica.csv')]; % concatenated training data

end