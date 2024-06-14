function r = bisection(f, a, b, tol, nmax)
    if f(a) * f(b) > 0
        error('f(a) and f(b) must have opposite signs');
    end

    r = (a + b) / 2;
    err = abs(f(r));

    for i = 1:nmax
        if f(a) * f(r) < 0
            b = r;
        else
            a = r;
        end

        r_old = r;
        r = (a + b) / 2;
        err = abs(r - r_old);

        if err < tol
            break;
        end
    end

    if i == nmax
        warning('Maximum number of iterations reached');
    end
end
