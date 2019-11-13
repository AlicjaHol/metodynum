clear
a=0;
b=3;
ya=1;

h=0.5;
n=(b-a)/h;
ww=a+(0:n)*h;
wwf4(1)=ya;

for i=2:(n+1)
wwf4(i)=wwf4(i-1)+0.5*h*(f(wwf4(i-1),ww(i-1))+f(wwf4(i-1)+h*f(wwf4(i-1), ww(i-1)),ww(i-1)+h));
endfor

d=linspace(a,b,100);
fd=rozw(d);
plot(ww, wwf4, '*', d, fd)

blad4=abs(wwf4(n+1)-rozw(ww(n+1)));