x = [2 1 -1 -2 - 1 1];
[X,w] = freqz(x, 1, 'whole');

figure(1);
subplot(2, 1, 1);
plot(w, abs(X));
axis([0 2*pi 0 7]);
title('Amplitude Spectrum');
xlabel('\omega');
subplot(2, 1, 2);
plot(w, angle(X));
axis([0 2*pi -pi pi]);
title('Phase Spectrum');
xlabel('\omega');
