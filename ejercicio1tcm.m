 %Ian Gerardo Esquivel García Ejercicio 1S
n = 10;

  for p = [0.4 0.6]
      P = [ p, 1-p, 0;
            p, 0, 1-p;
            0, 0, 1 ];
      pi0 = [1 0 0];

      pin = pi0 * (P^n);
      P_acepta = pin(1) + pin(2)

      fprintf('\n--- Ejercicio 1: p= %.1f, n=%d ---\n', p, n);
      disp('pi_n ='); disp(pin);
      fprintf('Prob(acepta) = %.12f\n', P_acepta);
  end 