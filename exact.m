function r=exact(x)
L = 1;
c = 0.01;
d = 0.01;
E = 2.1*10^11;
F = 2;
p = 7.6;
I = c*d^3/12;
r = -p*(x^4-4*L^3*x+3*L^4)/(24*E*I)-F*(x^3-3*L^2*x+2*L^3)/(6*E*I);
end
