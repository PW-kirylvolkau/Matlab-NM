%main file
C = input('Please, enter array of coeeficcients:');
p = generate_polynomial(C);
disp('The polynomial is:')
disp(p)
guess = input('Please, enter initial guess for this function:');
jarrat_method(guess,p)