


% Import data

load data.mat

figure('Position', [0 0 640 480]);
hold on;

plot(ds01.frequency , power(10, ds01.("L-Cone")), 'Color', [1, 0, 0]);
plot(ds01.frequency , power(10, ds01.("M-Cone")), 'Color', [0, 0.5, 0]);
plot(ds01.frequency , power(10, ds01.("S-Cone")), 'Color', [0, 0, 1]);

plot(565, 0.99977, 'Marker','o', 'Color', [1, 0, 0]);
text(580, 1.05, 'L-cone: 565nm', 'Color', [1, 0, 0]);

plot(540, 0.999079, 'Marker','o', 'Color', [0, 0.5, 0]);
text(460, 1.05, 'M-cone: 540nm', 'Color', [0, 0.5, 0]);

plot(440, 0.994947, 'Marker','o', 'Color', [0, 0, 1]);
text(355, 1.05, 'S-cone: 440nm', 'Color', [0, 0, 1]);

line([700 850], [0.5 0.5], 'Color', [0.6350, 0.0780, 0.1840]);
text(775, 0.525, 'IR', 'Color', [0.6350, 0.0780, 0.1840]);
line([350 390], [0.5 0.5], 'Color', [0.4940, 0.1840, 0.5560]);
text(370, 0.525, 'UV', 'Color', [0.4940, 0.1840, 0.5560]);

title('Relative cone spectral sensitivities by 2° flicker photometry');

ylabel('Relative cone spectral sensitivities');
xlabel('Wavelength (nm)')

ylim([0 1.1]);


