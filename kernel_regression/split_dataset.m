function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  m = size(X, 1);
  num_train = round(percentage * m);
  
  X_train = X(1:num_train, :);
  y_train = y(1:num_train, :);
  X_pred = X(num_train+1:end, :);
  y_pred = y(num_train+1:end, :);
end
