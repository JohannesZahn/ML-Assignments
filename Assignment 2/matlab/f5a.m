function [train_dataset, test_dataset] = f5a()

%% Don't edit! Ready for use.
train_dataset(:,:,1) = csvread('trainingSetosa.csv') ; 
train_dataset(:,:,2) = csvread('trainingVersicolor.csv'); 
train_dataset(:,:,3) = csvread('trainingVirginica.csv');
test_dataset = [csvread('testSetosa.csv'); csvread('testVersicolor.csv'); csvread('testVirginica.csv')]; % concatenated Testdata

end
