%%
% Script Name : Distribution Fitter
% Author : Aaron Lin (111133107)
% Description : This script takes the data from the data file and finds the
% appropriate parameters for the respective distributions (Log Normal,
% Gamma, and Normal), and then uses these parameters to plot a pdf
% distribution on top of the data's histogram.
%%
clear
close all
clc

load('project_1_data.mat'); % Loads the data from the data file

t = 0:0.1:6;
median = median(mys_data); % median = e^u
meanlog = mean(mys_data); % mean = median * exp(sigma^2 / 2)
sigma = sqrt(2 * log(meanlog / median)); 
mu = log(median);
y = lognpdf(t, mu, sigma); % Creates Log Normal Distribution using the parameters found
figure();
hold on;
histogram(mys_data, 'Normalization', 'pdf'); % Plots histogram of loaded data
plot(t, y); % Plots Log Normal Distribution pdf
hold off;
T1 = title(['Data Histogram vs Log Normal Distribution pdf, mu = ', num2str(mu), ', sigma = ', num2str(sigma)]);
xL = xlabel("$t$");
yL = ylabel("$pdf$");
set(T1, "Fontsize", 18);
set([xL,yL], "Interpreter", "latex");
set([xL,yL], "Fontsize", 16);

t = 0:0.1:6;
meangam = mean(mys_data); % Mean = k * theta
variance = var(mys_data); % Variance = k * theta^2
scale = variance / meangam; % Scale = theta
shape = meangam / scale;   % Shape = k
y = gampdf(t, shape, scale); % Creates Gamma Distribution using the parameters found
figure();
hold on;
histogram(mys_data, 'Normalization', 'pdf'); % Plots histogram of loaded data
plot(t, y); % Plots Gamma Distribution pdf
hold off;
T2 = title(['Data Histogram vs Gamma Distribution pdf, shape = ', num2str(shape), ', scale = ', num2str(scale)]);
xL = xlabel("$t$");
yL = ylabel("$pdf$");
set(T2, "Fontsize", 18);
set([xL,yL], "Interpreter", "latex");
set([xL,yL], "Fontsize", 16);

t = 0:0.1:6;
mu = mean(mys_data); % mu = mean
sigma = sqrt(var(mys_data)); % sigma = ?variance
y = normpdf(t, mu, sigma); % Creates Normal Distribution using the parameters found
figure();
hold on;
histogram(mys_data, 'Normalization', 'pdf'); % Plots histogram of loaded data
plot(t, y); % Plots Normal Distribution pdf
hold off;
T3 = title(['Data Histogram vs Normal Distribution pdf, mu = ', num2str(mu), ', sigma = ', num2str(sigma)]);
xL = xlabel("$t$");
yL = ylabel("$pdf$");
set(T3, "Fontsize", 18);
set([xL,yL], "Interpreter", "latex");
set([xL,yL], "Fontsize", 16);