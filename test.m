clear;
close all;

o = sum(sin((2:0.4:3)'*pi*(1:512)/64))';
%o = o + randn(size(o));

s = o;
s2 = shift(o, 10);

rd = randn(size(s));
rd2 = randn(size(s2));
sum([rd rd2])

s = s + 0.1*rd;
s2 = s2 + 0.1*rd2;

figure;plot([s s2])

fs = fft(s);
fs2 = fft(s2);

fss = fs.*conj(fs2);
nfss = fss./(abs(fss)+eps);

nss = ifft(nfss);
figure;plot(real(nss))
[~,gp] = max(real(nss))



