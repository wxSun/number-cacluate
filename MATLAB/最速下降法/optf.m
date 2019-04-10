function [ y ] = optf( x )
global D  X0
t= X0+x*D;
y=t(1)^2+25*t(2)^2;
end

