%%
% Script name : State-Space Model
% Author : Aaron Lin (111133107)
% Description : This script takes a system characterized by random 
% variables, and plots 50 realizations of the processes. The random variables
% are samples of the normal distribution with mean = 0, and variable
% variances. There are two processes, x_t and y_t.
%%
clear
close all
clc

sigma_u = 1;
sigma_v = 1;
figure(1);
hold on;
figure(2);
hold on;
for n = 1 : 50
    u = normrnd(0, sigma_u, 501, 1); % Vectors of size 501, with each value
    v = normrnd(0, sigma_v, 501, 1); % being a sample of the normal distribution of mean = 0 and variances(u,v) = (1,1)

    x = cumsum(u);  % Vector with each value being cumulative sum at index
    y = 0.5 * x.*x + v; % Process equation characterized by random variables
    figure(1);  % Plot for y process
    plot(1:501, y); % Plots a single realization of the process
    figure(2);  % Plot for x process
    plot(1:501, x);
end
hold off;
hold off;
figure(1);
T1 = title("50 Realizations of y_t, mean = 0, variances(u,v) = (1,1)");
xL = xlabel("$t$");
yL = ylabel("$y_t$");
set(T1, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);
figure(2);
T2 = title("50 Realizations of x_t, mean = 0, variances(u,v) = (10,0.1)");
xL = xlabel("$t$");
yL = ylabel("$x_t$");
set(T2, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);

sigma_u = sqrt(10);
sigma_v = sqrt(0.1);
figure(3);
hold on;
figure(4);
hold on;
for n = 1 : 50
    u = normrnd(0, sigma_u, 501, 1); % Vectors of size 501, with each value
    v = normrnd(0, sigma_v, 501, 1); % being a sample of the normal distribution of mean = 0 and variances(u,v) = (10,0.1)

    x = cumsum(u);  % Vector with each value being cumulative sum at index
    y = 0.5 * x.*x + v; % Process equation characterized by random variables
    figure(3); % Plot for y process
    plot(1:501, y); % Plots a single realization of the process
    figure(4);  % Plot for x process
    plot(1:501, x);
end
hold off;
hold off;
figure(3);
T3 = title("50 Realizations of y_t, mean = 0, variances(u,v) = (10,0.1)");
xL = xlabel("$t$");
yL = ylabel("$y_t$");
set(T3, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);
figure(4);
T4 = title("50 Realizations of x_t, mean = 0, variances(u,v) = (10,0.1)");
xL = xlabel("$t$");
yL = ylabel("$x_t$");
set(T4, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);

sigma_u = sqrt(0.1);
sigma_v = sqrt(10);
figure(5);
hold on;
figure(6);
hold on;
for n = 1 : 50
    u = normrnd(0, sigma_u, 501, 1); % Vectors of size 501, with each value
    v = normrnd(0, sigma_v, 501, 1); % being a sample of the normal distribution of mean = 0 and variances(u,v) = (0.1,10)

    x = cumsum(u);  % Vector with each value being cumulative sum at index
    y = 0.5 * x.*x + v; % Process equation characterized by random variables
    figure(5); % Plot for y process
    plot(1:501, y); % Plots a single realization of the process
    figure(6); % Plot for x process
    plot(1:501, x);
end
hold off;
hold off;
figure(5);
T5 = title("50 Realizations of y_t, mean = 0, variances(u,v) = (0.1,10)");
xL = xlabel("$t$");
yL = ylabel("$y_t$");
set(T5, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);
figure(6);
T6 = title("50 Realizations of x_t, mean = 0, variances(u,v) = (0.1,10)");
xL = xlabel("$t$");
yL = ylabel("$x_t$");
set(T6, "Fontsize", 18);
set([xL,yL], "Interpreter", "Latex");
set([xL, yL], "fontsize", 16);
