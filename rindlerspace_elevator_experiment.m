%% Initialization
clear; close all; clc;

%% Parameters for Visualization
g = 9.81; % Acceleration due to gravity (m/s^2)
c = 3e8 / 1e8; % Decrease speed of light for visualization (m/s), purely illustrative
d = 3; % Increase width of the elevator (meters) for clearer visualization
elevator_height = 10; % Elevator height (meters)
delta_t = d / c; % Time for light to cross the elevator (s)

%% Calculate Displacement and Curvature Angle for Accelerating Case
delta_h = 0.5 * g * delta_t^2; % Displacement of the elevator during delta_t (meters)
tan_alpha = (g * delta_t) / (2 * c);
alpha = atan(tan_alpha); % Angle in radians

%% Plotting Non-Accelerating and Accelerating Cases Side by Side
figure;
subplot(1,2,1); % Non-accelerating elevator
plot([0, d], [elevator_height, elevator_height], '-r', 'LineWidth', 2); % Light path
hold on;
plot([0, 0], [0, elevator_height], '-k', 'LineWidth', 2); % Elevator walls
plot([d, d], [0, elevator_height], '-k', 'LineWidth', 2);
title('Non-accelerating Elevator');
xlabel('Distance (m)');
ylabel('Height (m)');
axis equal;

subplot(1,2,2); % Accelerating elevator
plot([0, d], [elevator_height, elevator_height - delta_h], '-r', 'LineWidth', 2); % Light path
hold on;
plot([0, 0], [0, elevator_height], '-k', 'LineWidth', 2); % Elevator walls
plot([d, d], [0, elevator_height], '-k', 'LineWidth', 2);
title(['Accelerating Elevator, \alpha = ', num2str(rad2deg(alpha)), '°']);
xlabel('Distance (m)');
ylabel('Height (m)');
axis equal;

%% Animation of Light Bending in Accelerating Elevator
f = figure;
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';

loops = 100;
F(loops) = struct('cdata',[],'colormap',[]);
x_light = linspace(0, d, loops);
y_light = linspace(elevator_height, elevator_height - delta_h, loops);

for j = 1:loops
    plot(x_light(j), y_light(j), 'ro', 'MarkerFaceColor', 'r');
    hold on;
    plot([0, 0], [0, elevator_height], '-k', 'LineWidth', 2); % Elevator walls
    plot([d, d], [0, elevator_height], '-k', 'LineWidth', 2);
    hold off;
    xlim([0, d]);
    ylim([0, elevator_height]);
    title('Animating Light in Accelerating Elevator');
    xlabel('Distance (m)');
    ylabel('Height (m)');
    F(j) = getframe;
    if j < loops
        clf;
    end
end

% Uncomment the following lines to play the animation
% movie(F,1);
