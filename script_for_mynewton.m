f = @(x) x^2 - 2;
df = @(x) 2*x;

x0 =1;
tol = 1e-6;
nmax = 10;

x = mynewton(f, df, x0, tol, nmax)
%% 

f = @(x) exp(-x) - cos(x);
df = @(x) -exp(-x) + sin(x);

x0 =1.35; % initial guess = (a+b)/2 = 1.35
tol = 1e-12;
nmax = 10;
x = mynewton(f, df, x0, tol, nmax)


