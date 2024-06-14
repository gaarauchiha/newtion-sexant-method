f = @(x) 9*x^4 + 18*x^3 + 38*x^2 - 57*x + 14;

tol = 1e-6;
nmax = 100;

r1 = bisection(f, 0, 1, tol, nmax);
%% 

r2 = bisection(f, 0, 0.5, tol, nmax);
%% 

r3 = bisection(f, 0.5, 1, tol, nmax);



%% 

fprintf('Root on [0, 0.5]: %f\n', r2);
fprintf('Root on [0.5, 1]: %f\n', r3);