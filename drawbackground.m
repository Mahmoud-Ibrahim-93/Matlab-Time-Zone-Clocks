function [x,y]= drawbackground(style)
theta=linspace(2.5*pi,pi/2,216000); % divide the 360 degrees of an hour into 60*60*60 part
radius=2*ones(1,length(theta)); % make the radius matrix
radiusPosition=1.8*ones(1,length(theta)); % the radius of hour labels
[x,y]=pol2cart(theta,radius); % convert polar coordinates into cartesian
[xposition,yposition]=pol2cart(theta,radiusPosition); 
a=plot(x,y,style); % plot the back ground

title('Exams are coming'); % make a title for the drawing
set(gcf,'name','Exam Clock','numbertitle','off') % name the window of the figure
% write the name of the hour

text(xposition(length(x)*1/12),yposition(length(y)*11/12),'1');
text(xposition(length(x)*2/12),yposition(length(y)*10/12),'2');
text(xposition(length(x)*3/12),yposition(length(y)*9/12),'3');
text(xposition(length(x)*4/12),yposition(length(y)*8/12),'4');
text(xposition(length(x)*5/12),yposition(length(y)*7/12),'5');
text(xposition(length(x)*6/12)-.05,yposition(length(y)*6/12),'6');
text(xposition(length(x)*7/12),yposition(length(y)*5/12),'7');
text(xposition(length(x)*8/12),yposition(length(y)*4/12),'8');
text(xposition(length(x)*9/12),yposition(length(y)*3/12),'9');
text(xposition(length(x)*10/12),yposition(length(y)*2/12),'10');
text(xposition(length(x)*11/12),yposition(length(y)/12),'11');
text(xposition(1)-.1,yposition(1),'12');
axis off % turn off the axes
axis square % make the axes square
hold on % keep the drawing figure
end