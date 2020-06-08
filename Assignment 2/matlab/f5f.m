function f5f(dataset)
features = [4 2;3 1;3 4;1 2];

figure;
for i = 1:size(features)
    subplot(2,2,i);
    scatter(reshape(dataset(:,features(i,1), :),[],1),reshape(dataset(:,features(i,2),:),[],1));
    title(sprintf('Features: %d, &d', features(i,1), features(i,2)));
end

end

