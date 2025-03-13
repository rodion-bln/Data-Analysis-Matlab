function probabilities = multivariate_gaussian(X, mean_values, covariance_matrix)
    n = size(X, 2);
    
    normalization = 1 / ((2 * pi)^(n/2) * sqrt(det(covariance_matrix)));
    
    deviations = X - mean_values;
    
    exponent = -0.5 * sum((deviations / covariance_matrix) .* deviations, 2);
    
    probabilities = normalization * exp(exponent);
end
