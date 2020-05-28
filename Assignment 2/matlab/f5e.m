function [eval_summary] = f5e(dataset, class)

%% Write results in this array. 
eval_summary = zeros(3, 4)
%% Use the following order:     setosa, versicolor, virginica
%%                              tp, tn, fp, fn

%% Insert code here:
correct_classes = cat(1, cat(1, zeros(10,1), ones(10,1)), 2.* ones(10,1));

for c = 0:2
  for d = 1:30
      if correct_classes(d) == class(d)
          if correct_classes(d) == c
              eval_summary(c+1, 1) = eval_summary(c+1, 1) + 1;
          else
              eval_summary(c+1, 2) = eval_summary(c+1, 2) + 1;
          end
      else
          if correct_classes(d) == c
              eval_summary(c+1, 4) = eval_summary(c+1, 4) + 1;
          else
              eval_summary(c+1, 3) = eval_summary(c+1, 3) + 1;
          end
      end
  end
end

end
