function [xPitch] = VoiceFeatures(data)
F=fft(data(:,1));
plot(real(F));
m = max(real(F)); %max frequency
xPitch = find(real(F)==m,1) % find first instance of maximum where it is appearing

