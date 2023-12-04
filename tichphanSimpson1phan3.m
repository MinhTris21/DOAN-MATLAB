function y = tichphanSimpson1phan3(fx,a,b,N)
    h = (b-a)/N;
    tongchan = 0;
    tongle = 0;
    for i = 1:2:N-1
        tongle = tongle + fx(a+i*h);
    end
    for i = 2:2:N-2
        tongchan = tongchan + fx(a+i*h);
    end
    y = (h/3)*(fx(a)+fx(b)+4*tongle+2*tongchan);