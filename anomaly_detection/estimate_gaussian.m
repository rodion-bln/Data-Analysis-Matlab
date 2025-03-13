function [mean_values, covariance_matrix] = estimate_gaussian(X)
    [m, n] = size(X); 

    mean_values = mean(X);

    deviations = X - mean_values; 
    covariance_matrix = (deviations' * deviations) / m; 
end


