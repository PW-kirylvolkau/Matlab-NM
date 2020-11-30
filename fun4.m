function [Y] = fun4(X)
    % This function uses Taylor series expansion to calculate the
    % approximation of the function (sin(x) - x)*x^(-3). 
    % Kiryl Volkau, 300763.
    
    [n,m] = size(X);
    Y = zeros(n,m);
    for i=1:170
        x_i = (-1)^i*X.^(2*i-2)/factorial(2*i+1);
        Y = Y + x_i;
    end
end