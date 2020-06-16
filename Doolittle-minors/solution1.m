function principals = solution1(A)
    [n,~] = size(A);
    columns = 1:n;
    principals = [];
    %n-1 because matrix n x n is matrix A
    for i=1:n-1
        rows_to_be_deleted = nchoosek(columns,i);
        for j = 1:length(rows_to_be_deleted)
            B = A;
            B(rows_to_be_deleted(j,:),:) = [];
            B(:,rows_to_be_deleted(j,:)) = [];
            [L,U] = doolittle(B);
            principals(end+1)=det(L)*det(U);
        end
    end
    [L,U] = doolittle(A);
    principals(end+1)=det(L)*det(U);
end