clear
clc
% Delay between Every update
delay=.00001;
% Creat a new figure
myfigure=figure();
% Maximize the figure
set(myfigure, 'Position', get(0, 'Screensize'));

% while the figure hasn't been closed keep updating the clocks
while(ishandle(myfigure))
% Create clock instance
c=clock;
% get The hour value for each capital
Egypt_hour=c(4);
GMT_hour=mod(Egypt_hour-2,24);
Moscow_hour=mod(Egypt_hour+1,24);
NY_hour=mode(c(4)-6,24);
Tunis_hour=mod(Egypt_hour-1,24);
KSA_hour=mod(Egypt_hour+1,24);
% The min and sec are the same for all capitals
min=c(5);
sec=floor(c(6));

% update the time for each capital
if ishandle(myfigure)
hold off
updateClock('Cairo',subplot(2,3,1),Egypt_hour,min,sec);
end
if ishandle(myfigure)
hold off
updateClock('GMT',subplot(2,3,2),GMT_hour,min,sec);
end
if ishandle(myfigure)
hold off
updateClock('New York',subplot(2,3,3),NY_hour,min,sec);
end
if ishandle(myfigure)
hold off
updateClock('Moscow',subplot(2,3,4),Moscow_hour,min,sec);
end
if ishandle(myfigure)
hold off
updateClock('KSA',subplot(2,3,5),KSA_hour,min,sec);
end
if ishandle(myfigure)
hold off
updateClock('Tunis',subplot(2,3,6),Tunis_hour,min,sec);
end
% the figure axes data gets updated here
drawnow
% pause is used for the drawnow
pause(delay);
end