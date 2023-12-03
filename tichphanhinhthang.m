function y = tichphanhinhthang(fx,a,b,N)
    h = (b-a)/N;
    tong = 0;
    for i = 1:N-1
        tong = tong + fx(a+i*h);
    end
    y = h/2 *(fx(a)+fx(b)+2*tong);
    