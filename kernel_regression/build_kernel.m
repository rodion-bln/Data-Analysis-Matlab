function K = build_kernel(X, f, f_param)
  m = size(X, 1); 
  K = zeros(m, m);
  
  for i = 1:m
      for j = 1:m
          K(i, j) = f(X(i, :), X(j, :), f_param);
      end
  end
end