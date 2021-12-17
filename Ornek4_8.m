Fs=1000;
Fd=100;
NFFT=1;
b=round(rand(1,1000));
manch=fazkodla(b,Fd,Fs,'manchester');
[gsymanch,f]=pwelch(manch,[],NFFT,Fs);
plot(f,gsymanch,'b');
title('Manchester Güç Spektral Yoğunluğu');
pause;
mil=fazkodla(b,Fd,Fs,'miller');
[gsymil,f]=pwelch(mil,[],NFFT,Fs);
plot(f,gsymil,'b');
title('Miller Güç Spektral Yoğunluğu');