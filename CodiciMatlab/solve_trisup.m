function x = solve_trisup(A, x, n)
% x = solve_trisup(A, x, n)
% Il metodo risolve il sistema lineare associato alla matrice A di
% dimensione n triangolare superiorre e vettore dei
% termini noti x che in seguito sara' il vettore soluzione.
% A = matrice triangolare superiore
% x = vettori dei termini noti e della soluzione
% n = dimensione della matrice


for i = n : -1 : 1
    for j = i + 1 : n
        x(i) = x(i) - A(i, j) * x(j);
    end
    x(i) = x(i) / A(i, i);
end