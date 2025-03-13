function k = gaussian_kernel(x, y, sigma)
  k = exp(-norm(x - y)^2 / (2 * sigma^2));
endfunction