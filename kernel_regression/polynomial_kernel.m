function k = polynomial_kernel(x, y, d)
  k = (1 + y * x')^d;
endfunction
