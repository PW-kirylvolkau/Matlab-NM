% C - array of coefficients c_0, c_1, ..., c_n
function p = generate_polynomial(C) 
    p = 0;
    for idx=1:length(C)
        p = p + C(idx)*generate_chebyshev(idx-1);
        disp('Chebyshev:')
        disp(generate_chebyshev(idx-1))
        disp('Generated:')
        disp(p)
    end
end