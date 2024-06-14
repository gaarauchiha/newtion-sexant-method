function x = mynewton(f, df, x0, tol, nmax)
    x = x0;

    for i = 1:nmax
        
        x_old = x;
        x = x - f(x)/df(x);

        fprintf('Iteration %d: x = %g, f(x) = %f\n', i, x, f(x)); 

        if abs(x - x_old) < tol
            break;
        end
    end

    if i == nmax
        warning('Maximum number of iterations reached');
    end
end
