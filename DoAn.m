
% % Nhập dữ liệu x: 
% xa = [0.1 0.3 0.5 0.7 0.9];
% % Nhập dữ liệu y: 
% ya = [0.1002 0.3047 0.5236 0.7754 1.1198];
% h = xa(2) - xa(1)

% Hoặc

% % Nhập hàm số: 
% y = @(x) asin(x);
% % Nhập bước h: 
% h = 0.05;

% Chọn sai số:
% Sai số O(h) hoặc O(h^2)


%Chuyển từ chuổi x,y sang hàm số y = f(x)

    % function [y] = symsLagrange(xa, ya)
    syms x;
    n = length(xa);
    P = 0;
        for i = 1:1:n
            L = 1;
            for j = 1:1:n
                if i~=j
                    L = L*(x-xa(j))/(xa(i)-xa(j));
                end
            end
            P = P + ya(i)*L;
        end
        y = str2func(['@(x)' char(P)]);
    % end


% Tính đạo hàm bậc 2, 3
    syms x; 
    fd1 = str2func(['@(x)' char(diff(y(x)))]);
    fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
    fd3 = str2func(['@(x)' char(diff(fd2(x)))]);

%Phương pháp xấp xỉ tiến 

    %%Trường hợp sai số O(h)
    fdh_XapXiTien = (y(x+h)-y(x))/h - h*fd2(x)/2;

    %%Trường hợp sai số O(h^2)
    %fdh_XapXiTien = (y(x+h)-y(x))/h - h*fd2(x)/2 - (h^2)*fd3(x)/6;

%Phương pháp xấp xỉ lùi

    %%Trường hợp sai số O(h)
    fdh_XapXiLui = (y(x)-y(x-h))/h + h*fd2(x)/2;

    %%Trường hợp sai số O(h^2)
    %fdh_XapXiLui = (y(x)-y(x-h))/h + h*fd2(x)/2 - (h^2)*fd3(x)/6;

%Phương pháp xấp xỉ trung tâm
    
    %%Trường hợp sai số O(h)
    fdh_XapXiTrungTam = (y(x+h)-y(x-h))/(2*h);

    %%Trường hợp sai số O(h^2)
    %fdh_XapXiTrungTam = (y(x+h)-y(x-h))/(2*h) - (h^2)*fd3(x)/6;


















