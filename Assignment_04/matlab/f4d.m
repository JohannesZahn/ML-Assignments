function [projection_n_dim] = f4d(dataset, pc, n_dim)
[min_row_sum, row_nr] = min(sum(n_dim,2)); % get row number for combination of pcs
                                          % with the least dimensions
dims = find(n_dim(row_nr,:)); % select dimensions of pcs
projection_n_dim = dataset * pc(:, dims); % project 

end
