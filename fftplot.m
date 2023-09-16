Fs = (8/3) * 1e6 ;

n = length(z);
Y = fft(z);
Yshift = abs(fftshift(Y));
faxis = (-n/2:n/2-1)'*Fs/n;

YshiftMax = max(Yshift);
YshiftN = Yshift/YshiftMax;
YshiftNdB = 20*log10(YshiftN);

% figure
plot(faxis,YshiftNdB);
xlabel('freq');
ylabel('amplitude');