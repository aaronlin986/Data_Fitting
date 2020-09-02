%%
% Script name : Student-T Distribution vs Normal Distribution
% Author : Aaron Lin (111133107)
% Description : This script plots the Normal Distribution as well as the
% Student-T Distributions with varying degrees of freedom, so that the two
% distributions can be compared. 
%%

clear
close all
clc

M = 10000;              % Sample size
v = [1.5, 2, 5, 10, 100];   % Vector of varying degrees of freedom
x = -10:0.01:10;
for i = 1:5 
    data = trnd(v(i), M, 1); % Vector of size M, with each value being a sample of the Student-T Distribution with a degree of freedom of v(i)
    y = normpdf(x, 0, 1);   % Standard Normal Distribution
    figure();
    hold on;
    histogram(data, 'Normalization', 'pdf'); % Plots Student-T Distribution histogram
    plot(x, y);    % Plots Normal Distribution pdf
    hold off;
    TT = title(['Student-t Distribution vs Normal Distribution v = ', num2str(v(i)), ', M = 10000']);
    xL = xlabel('$t$');
    yL = ylabel('$pdf$');
    set(TT, 'FontSize', 18);
    set([xL, yL], 'Interpreter', 'latex');
    set([xL, yL], 'FontSize', 16);
end
