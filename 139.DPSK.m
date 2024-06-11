clear all;
close all;
clc;
fc = 1; % carrier frequency;
samp = 1000;
t = linspace(0, 2*pi, samp);
ph1 = cos(fc*t);
ph2 = -cos(fc*t);
%b = [1 0 0 0 0 0 0 1 1 1 1 1 0 1 0 1];
b = [0 0 1 0 0 1 0 0 1 1];

% Converting binary sequence to DPSK
x = 1;
nb = zeros(1, length(b)+1);
for i = 1:length(b)
    nb(i+1) = xor(b(i), x);
    x = nb(i+1);
end

dpsk = []; bin1 = []; bin2 = [];
for j = 1:length(nb)
    if nb(j) == 0
        dpsk = [dpsk, ph1];
        bin1 = [bin1, zeros(1, samp)];
    elseif nb(j) == 1
        dpsk = [dpsk, ph2];
        bin1 = [bin1, ones(1, samp)];
    end
end

for k = 1:length(b)
    if b(k) == 0
        bin2 = [bin2, zeros(1, samp)];
    elseif b(k) == 1
        bin2 = [bin2, ones(1, samp)];
    end
end

% Plotting
subplot(311), plot(bin2, 'k', 'LineWidth', 3);
axis([0 samp*length(b) -0.2 1.2]);
xlabel('Time index'); ylabel('Amplitude');
title('The Binary Input', 'FontSize', 12);
bn = num2str(b);
bx = ['The Binary string is ', bn];
text(10, 1, bx, 'FontSize', 12);



subplot(312), plot(bin1, 'k', 'LineWidth', 3);
axis([0 samp*length(b) -0.2 1.2]);
xlabel('Time index'); ylabel('Amplitude');
title('The Binary (differential) Input', 'FontSize', 12);
nb_str = num2str(nb);
bx = ['The Differential Binary string is ', nb_str];
text(10, 1, bx, 'FontSize', 12);



subplot(313), plot(dpsk, 'k', 'LineWidth', 3);
axis([0 samp*length(b) -1.2 1.2]);
xlabel('Time index'); ylabel('Amplitude');
title('The Simulated DPSK output', 'FontSize', 12);