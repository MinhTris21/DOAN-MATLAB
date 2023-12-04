function y = tichphanSimpson3phan8(fx,a,b,N)
    %N ph?i là b?i c?a 3 n?u ko kq s? b? sai
    h = (b-a)/N;
    tong = 0;
    tongboiba = 0;
    for i = 1:1:N-1
        if mod(i,3)~=0
            tong = tong + fx(a+i*h);
        end
    end
    for i = 3:3:N-3
        tongboiba = tongboiba + fx(a+i*h);
    end
    y = (3*h/8)*(fx(a)+fx(b)+3*tong+2*tongboiba);