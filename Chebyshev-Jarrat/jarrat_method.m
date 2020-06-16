function x_n = jarrat_method(guess,p)
    diff_p = diff(p);
    x_n = guess;
    counter = 0;
    while abs(double(subs(p,'x',x_n))) > 0.001
        value = subs(p,'x',x_n);
        diff_value = subs(diff_p,'x',x_n);
        x_n = double(x_n - value/(diff_value-1/2*(value/diff_value)));
        counter = counter + 1;
        if counter > 100
            error('Too many iterations, try different initial gues.')
        end
    end
    disp('Success!')
end