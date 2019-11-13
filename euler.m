clear
a=0;
b=3;
ya=1;

h=0.5;
n=(b-a)/h;
ww=a+(0:n)*h;
wwf2(1)=ya;
for i=2:(n+1)
wwf2(i)=wwf2(i-1)+h*f(wwf2(i-1), ww(i-1));
endfor
%w=polyfit(ww, wwf, n+1);

%d=linspace(a, b, 100);
%wart=polyval(w,d);
%plot(d, wart)
d=linspace(a,b,100);
fd=rozw(d);
plot(ww, wwf2, '*', d, fd)
blad2=abs(wwf2(n+1)-rozw(ww(n+1)));