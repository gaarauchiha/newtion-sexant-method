function x = mysecant(f, x0, x1, tol, nmax)
    for i = 1:nmax
        if abs(f(x1)) < tol
            break;
        end
        x_temp = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
        x0 = x1;
        x1 = x_temp;
        fprintf('Iteration %d: x = %g, f(x) = %f\n', i, x1, f(x1));
    end
    x = x1;
    if i == nmax
        warning('Maximum number of iterations reached');
    end
end
