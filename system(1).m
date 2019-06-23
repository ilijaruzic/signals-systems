function y = Primer_3_1(x)
y_prev = zeros(1,3);
x_prev = zeros(1,2);
N = length(x);
y = zeros(1,N);
for n = 1:N
    y(n) = x(n) + x_prev(2) - 0.25*y_prev(1) + 0.25*y_prev(2) + 0.375*y_prev(3);
    x_prev(2:end) = x_prev(1:end-1);
    y_prev(2:end) = y_prev(1:end-1);
    x_prev(1) = x(n);
    y_prev(1) = y(n);
end
