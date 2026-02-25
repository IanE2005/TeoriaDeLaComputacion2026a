%Ian Gerardo Esquivel García Ejercicio 2
n = 8;

for p = [0.5 0.3]
    P = [ 1-p, p, 0;
            0, p, 0;
          1-p, p, 0 ];
    pi0 = [1 0 0];
    pin = pi0 * (P^n);
    P_acepta = pin(3);

    fprintf('\n--- Ejercicio 2: p=%.1f, n=%d---\n', p, n);
    disp('pi_n ='); disp(pin);
    fprintf('Prob(acepta) = %.12f\n', P_acepta);
end