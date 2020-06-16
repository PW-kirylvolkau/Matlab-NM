function [L,U,P] = LUP_decomposition(A)    
    %we know that matrix is squared
    [n,~] = size(A);
    P = eye(n);
    for i = 1:n - 1
        % find max element in column i from element i (pivot)
        [~, x] = max(abs(A(i:n,i)));
        row_w_max = i + x -1;
        if x > 1 % Row change if necessary
            swap_P = P(i,:);
            swap_A = A(i,:);
            A(i,:) = A(row_w_max,:);
            P(i,:) = P(row_w_max,:);
            A(row_w_max,:) = swap_A;
            P(row_w_max,:) = swap_P;
        end
        % finding coeeficients and dividing by them left matrix
        for j = i + 1: n
            A(j,i) = A(j,i)/A(i,i);
            A(j,i+1:n) = A(j,i+1:n)-A(j,i)*A(i,i+1:n);
        end
    end
    %setting easy default values
    for i = 1:n
        for n = 1:n
            if i == n
                L(i,i) = 1.0;
                U(i,i) = A(i,i);
            elseif i > n
                L(i,n) = A(i,n); 
                U(i,n) = 0.0;
            else 
                L(i,n) = 0.0;
                U(i,n) = A(i,n);
            end
        end
    end
end