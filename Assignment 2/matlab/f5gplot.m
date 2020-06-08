function f5g(test_dataset, class_independent, class_multivariate)

figure;
colors = zeros(size(test_dataset,1), 1);
for i = 1:size(test_dataset)
    
    if class_independent(i) == 0
        edge_color = 'r';
    elseif class_independent(i) == 1
        edge_color = 'b';
    else
        edge_color = 'g';
    end
    
    if class_multivariate(i) == 0
        face_color = 'r';
    elseif class_multivariate(i) == 1
        face_color = 'b';
    else
        face_color = 'g';
    end
    
    scatter(test_dataset(i,1),test_dataset(i,3),'MarkerEdgeColor',edge_color,'MarkerFaceColor',face_color, 'LineWidth',2)
    xlabel('Sepale Länge') 
    ylabel('Petale Länge') 
    hold on;
end

end