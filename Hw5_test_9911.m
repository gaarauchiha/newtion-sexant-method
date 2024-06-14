% Define the function
f = @(x) exp(-x) - cos(x);

% Evaluate the function at the endpoints of the interval
fa = f(1.1);
fb = f(1.6);

% Check if the function values at the endpoints have opposite signs
if sign(fa) ~= sign(fb)
    disp('There is a root in the interval [1.1, 1.6].');
else
    disp('There is no root in the interval [1.1, 1.6].');
end
% Define the iteration function
g1 = @(x) f(x) + x;

% Choose the starting point
x0 = 1.6;

% Perform 4 iterations
x = zeros(1, 5);
x(1) = x0;
for i = 2:5
    x(i) = g1(x(i-1));
end

% Display the results
disp(x);
% Define the function f(x)
f = @(x) exp(-x) - cos(x);

% Define g2(x) = x - f(x)
g2 = @(x) x - f(x);

% Initial value
x0 = 1.6;

% Number of iterations
num_iterations = 4;

% Array to store the iterates
x_values = zeros(1, num_iterations + 1);
x_values(1) = x0;

% Perform the iterations
for i = 1:num_iterations
    x_values(i + 1) = g2(x_values(i));
end

% Display the results
disp('Fixed Point Iteration using g2(x) = x - f(x):');
for i = 1:num_iterations + 1
    fprintf('x%d = %.6f\n', i-1, x_values(i));
end

%% 


% Define the function for f(x) = 5x - 43
f = @(x) x^5 - 4^3;

% Use the secant method to find the root
x0 = 3;  % initial guess
x1 = 2;  % second guess
tol = 1e-6;  % tolerance
nmax = 10;  % maximum number of iterations
x = mysecant(f, x0, x1, tol, nmax);

%% 
% Define the function for f(x) = 5x - 43
f = @(x) x^3-2*x+1;

% Use the secant method to find the root
x0 = 4;  % initial guess
x1 = 2;  % second guess
tol = 1e-6;  % tolerance
nmax = 10;  % maximum number of iterations
x = mysecant(f, x0, x1, tol, nmax);

%% 
% Define the function for f(x) = e^x - 2
f = @(x) exp(x) - 2;

% Use the secant method to find the root
x0 = 0;  % initial guess
x1 = 1;  % second guess
tol = 1e-6;  % tolerance
nmax = 100;  % maximum number of iterations
x = mysecant(f, x0, x1, tol, nmax);


