import numpy as np
 
n = 10
for p in [0.3, 0.8]:

    P = np.array([
        [p, (1 - p), 0],
        [0, (1 - p), p],
        [0, 0, 1]
    ])
    
    pi0 = np.array([1, 0, 0])
    pin = pi0 @ np.linalg.matrix_power(P, n)
    p_acepta = pin[2]
    
    print(f"\np={p}, n={n}")
    print(f"pi_n = {pin}")
    print(f"Prob (acepta) = {p_acepta:.12f}")
