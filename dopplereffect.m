% Constants
c = 3e8; % Speed of light (m/s)
g = 9.81; % Acceleration due to gravity (m/s^2)
d = 10; % Distance light travels upward in the elevator (m)

% Time for the photon to travel distance d
delta_t = d / c;

% Setup for video writing
v = VideoWriter('photon_movement.mp4', 'MPEG-4');
open(v);

% Setup figure
fig = figure;
axis([0 1 0 d]);
title('Photon Moving Upward with Decreasing Frequency');
xlabel('Elevator Width');
ylabel('Height (m)');
grid on;
hold on;

% Color map for visualization (Blue to Red)
colors = [0, 0, 1; 1, 0, 0]; % Blue to Red

for i = 1:100
    % Calculate position
    y_pos = i * (d / 100);
    
    % Interpolate color based on position
    color_idx = interp1([1, 100], [1, 2], i, 'linear', 'extrap');
    photon_color = interp1([1, 2], colors, color_idx);
    
    % Plot photon's position with interpolated color
    scatter(0.5, y_pos, 100, 'MarkerEdgeColor', photon_color, 'MarkerFaceColor', photon_color);
    drawnow;
    
    % Capture the plot as an image 
    frame = getframe(fig); 
    writeVideo(v, frame);
    
    % Clear the plot for the next frame
    if i < 100
        cla;
    end
end

hold off;
close(v); % Close the video file