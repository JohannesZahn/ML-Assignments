function f5b(train_dataset)

    for class = 1:3
        for feature = 1:4
            subplot(3,4,(feature - 1) * 3 + class);
            histogram(train_dataset(:,feature,class), 10)
            title(sprintf('K: %d, M: %d', class, feature));
        end
    end

end