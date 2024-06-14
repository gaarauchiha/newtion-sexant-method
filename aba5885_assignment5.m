% Programmer:  Abdulmajeed Alqahtani
% Section:     001
% Assignment:  05 
% Date:        15 June 2024 
% Description: This program asks the user to give a 3*3 matrix and count
% the number of elemets which are equal to a certain number and also number
% of elements which are in a certian range.
% In the next problem, the program asks an input value from the user and
% based on which range does the inserted value belong, an error message, a
% warning or simply a numerical output will be shown.

% Integrity Statement: I have completed this work with integrity. -- Abdulmajeed Alqahtani


% Question 1, part (a)
A = input('Please enter a 3x3 matrix in the format [a,b,c;d,e,f;g,h,i]: '); % Asks user to insert the 3*3 matrix in the shown format
count_equal_to_4 = numel(find(A == 4)); % Using find command to find elements of matrix equal to 4
fprintf('The number of elements equal to 4 is: %d\n', count_equal_to_4);

% Question 1, part (b)
count_less_than_5_or_greater_than_7 = numel(find(A < 5 | A > 7)); % Using or(|) to get the number of elements which are less than 5 "or" greater than 7
fprintf('The number of elements less than 5 or greater than 7 is: %d\n', count_less_than_5_or_greater_than_7);


%% 

% Question 3

x = input('Please enter a value for x: ');

% Building "if" strucure in a 3 branch tree to detrmine which of these 3 branches does x belong to

% Case 1: x is not in the domain of f(x) = ln(x) or simply x <= 0
if x <= 0
    error('Domain of f(x) is (0, inf) but inserted x is not in the domain of f(x)!'); %  Using error command
    
% Case 2: x is in the range of (0, 1)    
elseif x < 1
    warning('Since inserted x is between 0 and 1, value of f(x) will be less than 0.'); % Using warning command
    fprintf('The value of f(x) = ln(x) for x = %.2f is: %.2f\n', x, log(x));
    
% Case 3: x is in the range of [1, inf)    
else 
    fprintf('The value of f(x) = ln(x) for x = %.2f is: %.2f\n', x, log(x));
end








