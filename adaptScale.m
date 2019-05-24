function [Hour,Min,Sec] = adaptScale(hour,min,sec)
hour=mod(hour,12);
min=mod(min,60);
sec=mod(sec,60);
% Adapts the scale
Min = min*720+sec*12;
Sec = sec *720;
Hour = hour*3600+min*60+sec;

end

