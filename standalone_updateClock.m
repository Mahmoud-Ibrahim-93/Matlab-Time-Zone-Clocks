clear
clc
delay=0.005; % delay in seconds
TwelveHourPoints=43200;
sec_scaling_factor=720;
min_scaling_factor=sec_scaling_factor/60;
hour_scaling_factor=min_scaling_factor/12;
myfig=figure;
sec=0;
min=0;
hour=0;
while(ishandle(myfig))
    hold off % make a new drawing for each second 
    [x,y]=drawbackground('ored'); % make the background appear
    pointx_Second=x(sec+1); % get the position of the x axis of the seconds pointer
    pointy_Second=y(sec+1); % get the position of the y axis of the seconds pointer
    pointx_min=x(min+1);
    pointy_min=y(min+1);
    pointx_hour=x(hour+1);
    pointy_hour=y(hour+1);
    plot([pointx_Second 0],[pointy_Second 0],'r') % plot the seonds pointer
    plot([pointx_min 0],[pointy_min 0],'b') % plot the minutes pointer     
    plot([pointx_hour 0],[pointy_hour 0],'k') % plot the hours pointer
    plot([pointx_Second 0],[pointy_Second 0],'*r',[pointx_min 0],[pointy_min 0],'*b',[pointx_hour 0],[pointy_hour 0],'*k') % All Tips
    sec=mod(sec+sec_scaling_factor,TwelveHourPoints); % make the seconds circulate every tic
    min=mod(min+min_scaling_factor,TwelveHourPoints); % make the min circulate every tic
    hour=mod(hour+hour_scaling_factor,TwelveHourPoints); % make the min circulate every tic
    text(-.4,-2.25,strcat('Time:',{' '},num2str(mod(floor(hour/(5*sec_scaling_factor)),60),'%02.f'),':',num2str(mod(floor(min/(sec_scaling_factor)),60),'%02.f'),':',num2str(mod(sec/sec_scaling_factor,60),'%02.f')))
    pause(delay) % make a pause necessary for the refresh function
    drawnow
end
