function P = timDaThucNoiSuyNewTon(xa, ya)

    syms x;
    n_x = length(xa);
    da = ya;
    for i = 1:1:n_x
        for j = 1:1:(i-1) 
            da(i) = (da(j) - da(i))/(xa(j) - xa(i)); 
        end 
    end 
    n_da = length(da);
    P = da(n_da);
    for i = n_da-1:-1:1
        P = expand(P * (x - xa(i)) + da(i));
    end
    
end