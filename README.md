# RindlerSpace-DopplerEffect
Analysis of Rindler space and Doppler effect: A theoretical exploration into the equivalence of acceleration and gravity, and their effects on light propagation and redshift, based on General Relativity. Includes mathematical models and discussions on gravitational fields and photon energy shifts.

rindlerspace_elevator_experiment.m

This code provides a MATLAB simulation for visualizing the propagation of light in both a non-accelerating and an accelerating elevator scenario, inspired by theoretical concepts related to Rindler space and the gravitational Doppler effect. It's designed to illustrate the equivalence principle and the effects of acceleration on light paths, as discussed in theoretical physics contexts. Let's break down the key parts of the code:

Initialization
The script begins by clearing variables, closing all figures, and clearing the command line to ensure a fresh environment for the simulation.
Parameters for Visualization
It defines physical constants and parameters for the simulation: gravitational acceleration (g), a scaled-down speed of light (c) for visual purposes, the width of the elevator (d), and its height. These parameters are used to make the simulation visually comprehensible.
delta_t calculates the time it takes for light to traverse the width of the elevator, based on the modified speed of light.
Calculate Displacement and Curvature Angle for Accelerating Case
It calculates the vertical displacement of the elevator (delta_h) due to acceleration over the time delta_t, and the tangent of the angle (tan_alpha) that the light beam makes due to the elevator's acceleration. The angle alpha is then calculated using the arctangent function, which represents the curvature of the light path in the accelerating scenario.
Plotting Non-Accelerating and Accelerating Cases Side by Side
Two subplots are created: one for the non-accelerating case (light travels in a straight line) and one for the accelerating case (light path is curved). The elevator walls and the path of the light are drawn using plot commands.
For the accelerating case, the title includes the angle of light bending (alpha), converted to degrees for readability.
Animation of Light Bending in Accelerating Elevator
An animation loop is set up to dynamically show how the light beam moves through the elevator in the accelerating case. It visually represents the bending of light due to acceleration.
The animation loop creates a series of frames showing the light's position at different points in time, simulating motion. The frames are stored in a struct array F for playback.
The final section (commented out) is for playing the animation using the movie function, which would display the sequence of frames as a continuous animation.
This code serves as an educational tool to visually demonstrate a complex theoretical physics concept, making it easier to understand the effects of acceleration on light propagation, akin to gravitational effects, in a simplified and accessible manner.

dopplereffect.m

This MATLAB code snippet visualizes the journey of a photon moving upward within an elevator, with its frequency decreasing as it ascends, reflecting the gravitational redshift effect. It employs a creative approach to depict the change in frequency through color, transitioning from blue (higher frequency) to red (lower frequency). Here's a detailed breakdown of the code:

Constants
It defines fundamental constants and parameters: the speed of light (c), gravitational acceleration (g), and the distance the photon travels upward in the elevator (d). These constants set the physical context for the simulation.
Time Calculation
delta_t calculates the time it takes for the photon to travel the distance d upward, based on the speed of light. This establishes the temporal framework for the simulation.
Video Setup
Initializes a video writer object v to create an MP4 file (photon_movement.mp4). This object is used to capture and save the animation of the photon's movement.
Figure Setup
Prepares a figure for the animation with defined axes, title, labels, and grid. The spatial domain of the photon's movement is established here, with the y-axis representing height within the elevator.
Color Map for Visualization
Defines a color map transitioning from blue to red, symbolizing the change in the photon's frequency as it moves upward. Blue represents higher frequency, while red indicates lower frequency, mirroring the expected decrease in frequency due to gravitational redshift.
Animation Loop
Iterates 100 times to animate the photon's upward journey. For each iteration:
y_pos calculates the photon's current height, simulating its progressive ascent.
color_idx and photon_color determine the photon's color at its current position by linearly interpolating between blue and red based on its height, visually representing the frequency shift.
Uses scatter to plot the photon's position with the interpolated color, creating a visual representation of its changing frequency.
drawnow updates the figure window with each frame of the photon's movement.
Captures each frame using getframe and saves it to the MP4 file using writeVideo, creating a continuous animation of the photon's ascent.
Clears the plot with cla after each frame (except the last) to prepare for the next position's visualization.
Finalization
Ends the loop, holds off further additions to the plot, and closes the video file with close(v), finalizing the animation.
This code visually communicates the concept of gravitational redshift through an engaging animation, making abstract physical principles more accessible and understandable by depicting the photon's frequency change as a color shift during its ascent in a gravitational field.

https://github.com/DeepDynaSim/RindlerSpace-DopplerEffect/assets/35817872/a3bfeec4-ab39-462f-be9a-a358b9717a71

https://github.com/DeepDynaSim/RindlerSpace-DopplerEffect/assets/35817872/4a031df7-3af3-4374-9684-1d54f88d1fc0



