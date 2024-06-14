f = @(x) tan(x) - x;

tol = 1e-6;
nmax = 100;

r = bisection(f, 1, 2, tol, nmax)
