f = @(x) x^3 - x^2 - 2*x + 1;

tol = 1e-6;
nmax = 100;

r1 = bisection(f, -2, 0, tol, nmax);
r2 = bisection(f, 0, 1, tol, nmax);
r3 = bisection(f, 1, 2, tol, nmax);

fprintf('First root = %f\n', r1);
fprintf('Second root = %f\n', r2);
fprintf('Third root = %f\n', r3);