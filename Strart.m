clear
clc

sec=0;
min=0;
hour=0;
myfig=figure;
while(ishandle(myfig))
    hold off % make a new drawing for each second 
    [x,y]=drawbackground('m'); % make the background appear
    pointx_Second=x(sec+1); % get the position of the x axis of the seconds pointer
    pointy_Second=y(sec+1); % get the position of the y axis of the seconds pointer
    pointx_min=x(min+1);
    pointy_min=y(min+1);
    pointx_hour=x(hour+1);
    pointy_hour=y(hour+1);
    plot([pointx_Second 0],[pointy_Second 0],'r') % plot the seonds pointer
    plot([pointx_min 0],[pointy_min 0],'b') % plot the minutes pointer
    plot([pointx_hour 0],[pointy_hour 0],'k') % plot the hours pointer
    plot(pointx_Second,pointy_Second,'*r') % seconds pointer end star
    plot(pointx_min,pointy_min,'*b') % minutes pointer End star
    plot(pointx_hour,pointy_hour,'*k') % hours pointer End star
    sec=rem(sec+length(x)/60,length(x))/3600; % make the seconds circulate every min
    min=rem(min+length(x)/3600,length(x))/60; % make the minutes circulate every hour (1/60*600
    hour=rem(hour+length(x)/43200,length(x)); % make the hours circulate every 12 hours (1/60*60*12)    
    text(-.4,-2.25,strcat('Time:',{' '},num2str(floor(hour/43200),'%02.f'),':',num2str(floor(min),'%02.f'),':',num2str(sec,'%02.f')))
    pause(delay) % make a pause necessary for the refresh function
    drawnow
end
