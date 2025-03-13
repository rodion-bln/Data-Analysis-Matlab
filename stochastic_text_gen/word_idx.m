function retval = word_idx(distinct_wds)
  keys = distinct_wds;
    
  values = num2cell(1:length(distinct_wds));
    
  retval = containers.Map(keys, values);
end