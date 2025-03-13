function x = conjugate_gradient(A, b, x0, tol, max_iter)
  
  x = x0;           % Inițializăm vectorul de soluții cu vectorul de pornire
  r = b - A * x;    % Calculăm reziduul inițial
  p = r;            % Inițializăm direcția de căutare cu reziduul inițial
  rsold = r' * r;   % Calculăm produsul scalar al reziduului inițial cu el însuși

  for i = 1:max_iter
      Ap = A * p;
      alpha = rsold / (p' * Ap);
      x = x + alpha * p;
      r = r - alpha * Ap;
      rsnew = r' * r;
      if sqrt(rsnew) < tol
          break;
      end
      p = r + (rsnew / rsold) * p;
      rsold = rsnew;
  end
end