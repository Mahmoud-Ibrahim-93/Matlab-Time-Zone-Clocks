function updateClock(capitalName,Axis,Hour,Min,Sec)
    delay=0.005; % delay in seconds
    TwelveHourPoints=43200;
    sec_scaling_factor=720;
    min_scaling_factor=sec_scaling_factor/60;
    hour_scaling_factor=min_scaling_factor/12;
    [hour,min,sec] = adaptScale(Hour,Min,Sec);
    [pointer_x_s,pointer_y_s,pointer_x_m,pointer_y_m,pointer_x_h,pointer_y_h]=drawbackground('ored'); % make the background appear
    pointx_Second=pointer_x_s(sec+1); % get the position of the x axis of the seconds pointer
    pointy_Second=pointer_y_s(sec+1); % get the position of the y axis of the seconds pointer
    pointx_min=pointer_x_m(min+1);
    pointy_min=pointer_y_m(min+1);
    pointx_hour=pointer_x_h(hour+1);
    pointy_hour=pointer_y_h(hour+1);
    plot(Axis,[pointx_Second 0],[pointy_Second 0],'r') % plot the seonds pointer
    plot(Axis,[pointx_min 0],[pointy_min 0],'b') % plot the minutes pointer     
    plot(Axis,[pointx_hour 0],[pointy_hour 0],'k') % plot the hours pointer
    plot(Axis,[pointx_Second 0],[pointy_Second 0],'*r',[pointx_min 0],[pointy_min 0],'*b',[pointx_hour 0],[pointy_hour 0],'*k') % All Tips
    % print the Digital clock time
    text(Axis,-.8,-2.25,strcat(capitalName,{' '},'Time:',{' '},num2str(Hour,'%02.f'),':',num2str(Min,'%02.f'),':',num2str(Sec,'%02.f')))
end
