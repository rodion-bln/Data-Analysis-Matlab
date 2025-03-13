function retval = k_secv_idx(distinct_k_sec)
  keys = distinct_k_sec;
  
  values = num2cell(1:length(distinct_k_sec));
  
  retval = containers.Map(keys, values);
end