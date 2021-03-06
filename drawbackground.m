function [pointer_x_s,pointer_y_s,pointer_x_m,pointer_y_m,pointer_x_h,pointer_y_h]= drawbackground(style)
theta=linspace(.5*pi,-1.5*pi,43200); % divide the 360 degrees of an hour into 12*60*60 part
radius=2*ones(1,length(theta)); % make the radius matrix
radiusPosition=1.8*ones(1,length(theta)); % the radius of hour labels
[fram_x,frame_y]=pol2cart(theta,radius); % convert polar coordinates into cartesian
[xposition,yposition]=pol2cart(theta,radiusPosition); 
a=plot(fram_x,frame_y,style); % plot the back ground
[fram_x,frame_y]=pol2cart(theta,radius); % convert polar coordinates into cartesian
[pointer_x_s,pointer_y_s]=pol2cart(theta,.95*radius); % convert polar coordinates into cartesian for second line
[pointer_x_m,pointer_y_m]=pol2cart(theta,.8*radius);
[pointer_x_h,pointer_y_h]=pol2cart(theta,.65*radius);

% write the name of the hour
for i =1:5
text(xposition(length(fram_x)*i/12),yposition(length(frame_y)*(12-i)/12),string(i));
end
for i =7:11
text(xposition(length(fram_x)*i/12),yposition(length(frame_y)*(12-i)/12),string(i));
end
for i=1:2
text(xposition(length(fram_x)*6*i/12)-.05*i,yposition(length(frame_y)*6*i/12),string(6*i));
end
axis off % turn off the axes
axis square % make the axes square
hold on % keep the drawing figure
end