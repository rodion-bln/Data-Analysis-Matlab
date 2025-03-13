function a = get_prediction_params_iterative(K, y, lambda)
  K_reg = K + lambda * eye(size(K));
  
  a = zeros(size(K, 1), 1);

  a = conjugate_gradient(K_reg, y, a, 1e-10, 1000);
end
