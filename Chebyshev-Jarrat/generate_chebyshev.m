% n - number of chebyshev term T_n(x)
function f = generate_chebyshev(n)
    if n==0 
        t_n = 1;
    elseif n==1
        t_n = [1 0]';
    else
        t_2 = zeros(n+1,1);
        t_2(n+1) = 1;
        t_1 = zeros(n+1,1);
        t_1(n) = 1;
        for i=2:n
            t_n = zeros(i+1,1);
            for j=n-i+1:2:n
                t_n(j) = 2*t_1(j+1) - t_2(j);
            end
            if mod(i,2)==0
                t_n(n+1) = (-1)^(i/2);
            end
            if i<n
                t_2 = t_1;
                t_1 = t_n;
            end
        end
    end
    syms x;
    f = 0;
    for k=1:length(t_n)
        f = f + power(x,k-1)*t_n(length(t_n)-k+1);
    end
end