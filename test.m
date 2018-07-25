o = sum(sin((2:0.4:3)'*pi*(1:512)/64))';
%o = o + randn(size(o));

s = o;
s2 = shift(o, 10);

rd = randn(size(s));
rd2 = randn(size(s2));
sum([rd rd2])

s = s + 0.1*rd;
s2 = s2 + 0.1*rd2;

plot([s s2])

fs = fft(s);
fs2 = fft(s2);

plot((abs([fs2])))

fss = fs.*conj(fs2);
nfss = fss./(abs(fss)+eps);
%plot(sum(angle([fs fs2 fss])))

nss = ifft(nfss);
plot(real(nss))
[~,gp] = max(real(nss))



%
%r = rand(512,50);
%fr = fft(r);

%afr = angle(fr);
%plot(sum(angle(fr)))

