function a = get_prediction_params(K, y, lambda)

  K_reg = K + lambda * eye(size(K));
  
  L = cholesky(K_reg);
  
  a = L' \ (L \ y);
endfunction