n = 12;
for p = [0.4 0.7]
    P = [ (1-p), p,     0;
          0,     p,     (1-p);
          0,     0,     1 ];
      
    pi0 = [1 0 0];
    
    pin = pi0 * (P^n);
    
    P_acepta = pin(3);
    
    fprintf('\np %.1f, n %d\n', p, n);
    disp('pi_n ='); disp(pin);
    fprintf('Prob (acepta) = %.12f\n', P_acepta);
end