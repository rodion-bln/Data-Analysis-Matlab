function pred = eval_value(x, X, f, f_param, a)
   m = size(X, 1);
   pred = 0;
   for i = 1:m
       pred = pred + a(i) * f(X(i, :), x, f_param);
   end
end