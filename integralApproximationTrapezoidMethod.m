%Tristan Flores
%Solution to computer exercise 5.1.1, 5.1.2b, 5.1.2c

% 2b
% f = e^x, a = 0, b = 1
% For the following solution, I'll be using 
% n = 10, for 9 equally spaced sections in the interval [a,b]

a = 0;
b = 1;
n = 10;
y = 0;
h = (b - a) / n;
for i = 0 : 1 : (n - 1)
    y = y + exp(a) + exp(a + h);
    a = a + h;
end
y = y * (h / 2);
disp(y);
