clear
a=0;
b=3;
ya=1;

h=0.5;
n=(b-a)/h;
ww=a+(0:n)*h;
wwf3(1)=ya;
for i=2:(n+1)
wwf3(i)=wwf3(i-1)+h*f(wwf3(i-1)+0.5*h*f(wwf3(i-1), ww(i-1)), ww(i-1)+0.5*h);
endfor

d=linspace(a,b,100);
fd=rozw(d);
plot(ww, wwf3, '*', d, fd)

blad3=abs(wwf3(n+1)-rozw(ww(n+1)));