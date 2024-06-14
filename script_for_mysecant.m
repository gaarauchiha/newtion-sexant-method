f = @(x) x^2 - 2;
root = mysecant(f, 1, 2, 1e-12, 10);
disp('Root for f(x) = x^2 - 2 is equal to : '), disp(root)

f = @(x) exp(-x) - cos(x);
root = mysecant(f, 1.1, 1.6, 1e-12, 10);
disp('Root for f(x) = e^-x - cos(x) is equal to : '), disp(root)
