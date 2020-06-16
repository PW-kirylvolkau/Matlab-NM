function determinant = solution2(A)
    determinant = 0;
    [L,U,P] = LUP_decomposition(A);
    disp('Matrix L')
    L
    disp('Matrix U')
    U
    disp('Matrix P')
    P
    disp('Determinant:')
    determinant = det(L)*det(U)*det(P);
    determinant
    if det(A)~=determinant
        disp('Wrong! incorrect discriminant:')
        det(A)
        error('Error occured while calculating discriminant')
    else
        disp('Everything went successfull.')
    end
end