clear
clc
% Delay between Every update
delay=1;
myfigure=figure();
set(myfigure, 'Position', get(0, 'Screensize'));
cairoAxis=subplot(2,3,3);
GMTAxis=subplot(2,3,2);
while(ishandle(myfigure))
c=clock;
Egypt_hour=c(4);
GMT_hour=mod(Egypt_hour-2,24);
Moscow_hour=mod(Egypt_hour+1,24);
NY_hour=mode(c(4)-6,24);
Tunis_hour=mod(Egypt_hour-1,24);
KSA_hour=mod(Egypt_hour+1,24);
min=c(5);
sec=round(c(6));
% updateClock(cairoAxis,hour,min,sec);
% pause(delay) % make a pause necessary for the refresh function
% drawnow

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
drawnow
pause(delay);
end