function [isMagic] = ismagic(A)
    
    % Determines, whether the sums of elements in each row/column 
    % and across main and anti diagonal are equal.
    
    [r, ~] = size(A);
    rows = sum(A);
    cols = transpose(sum(A,2));
    diag = trace(A);
    antidiag = sum(A(r:r-1:end-1));
    sums = [rows cols diag antidiag];
    isMagic = all(sums == sums(1));
end
% Kiryl Volkau, 300763