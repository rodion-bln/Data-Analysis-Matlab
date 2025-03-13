function B = k_secv(A, k)
  B = cell(length(A) - k, 1);
  
  for i = 1:(length(A) - k)
      elements = A(i:(i+k-1));
      B{i} = strjoin(elements, ' ');
  end
end