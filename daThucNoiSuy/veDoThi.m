function [x, y] = veDoThi(P, xa)
    N = 100;
    h = (max(xa) - min(xa)) / N;
    
    for i = 1:1:N+1
        x(i) = min(xa) + (i-1) * h;
        y(i) = P(x(i));
    end
end