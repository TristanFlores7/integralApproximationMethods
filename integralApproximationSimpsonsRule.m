%Tristan Flores
%Solution to computer exercise 5.3.1

% For the first integral, we first want to recognize that the true
% integral of the function is simply 4 * arctan(x) with a = 0, b = 1.
% This leads to the final value being equal to 4 * [atan(1) - atan(0)],
% which is equal to 4 * [pi/4 - 0] = pi. Therefore, our approximation using
% Simpson's Rule should be close to pi, with no more than 0.5 * 10^-5
% error.

a = 0;
b = 1;
h = (a + b) / 2;
y = (h / 3) * ((4 / (1 + a^2)) + 4 * (4 / (1 + (a + h)^2)) + (4 / (1 + (a + 2 * h)^2)));
format long;
disp(y);

if abs(pi - y) > (0.5 * 10^-5)
    for i = 2:1:10
        y = 0;
        a = 0;
        h = h / i;
        for j = 0:(2*h):1
            y = y + ((h / 3) * ((4 / (1 + a^2)) + (4 * (4 / (1 + (a + h)^2))) + (4 / (1 + (a + (2 * h))^2))));
            a = a + (2 * h);
        end
        disp(y);
    end
end
