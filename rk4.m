clear
a=0;
b=3;
ya=1;

h=0.5;
n=(b-a)/h;
ww=a+(0:n)*h;
wwf5(1)=ya;
for i=2:(n+1)
k1=f(wwf5(i-1), ww(i-1));
k2=f(wwf5(i-1)+0.5*k1*h, ww(i-1)+0.5*h);
k3=f(wwf5(i-1)+0.5*k2*h, ww(i-1)+0.5*h);
k4=f(wwf5(i-1)+k3*h, ww(i-1)+h);
wwf5(i)=wwf5(i-1)+h*(k1+2*k2+2*k3+k4)/6;
endfor

blad5=abs(wwf5(n+1)-rozw(ww(n+1)));

d=linspace(a,b,100);
fd=rozw(d);
plot(ww, wwf5, '*', d, fd)