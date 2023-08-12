
disp(1).topcenter=[0,5,4,1,0 ;0,0,-1,-1,0];
disp(1).middlecenter=[0,0.5,4.5,5,4.5,0.5,0 ;-6,-5.5,-5.5,-6,-6.5,-6.5,-6];
disp(1).bottomcenter=[0,1,4,5,0 ;-12,-11,-11,-12,-12];
disp(1).topleft=[0,1,1,0,0 ;-0.5,-1.5,-4.5,-5.5,-0.5];
disp(1).bottomleft=[0,1,1,0,0 ;-6.5,-7.5,-10.5,-11.5,-6.5];
disp(1).topright=[5,5,4,4,5 ;-0.5,-5.5,-4.5,-1.5,-0.5];
disp(1).bottomright=[5,5,4,4,5 ;-6.5,-11.5,-10.5,-7.5,-6.5];
dispincrement=[0,6,14,20,28,34,40,46];
%Date
for i=2:8
    disp(i)=disp(1);
    disp(i).topcenter(1,:)=disp(1).topcenter(1,:)+dispincrement(i);
    disp(i).middlecenter(1,:)=disp(1).middlecenter(1,:)+dispincrement(i);
    disp(i).bottomcenter(1,:)=disp(1).bottomcenter(1,:)+dispincrement(i);
    disp(i).topleft(1,:)=disp(1).topleft(1,:)+dispincrement(i);
    disp(i).bottomleft(1,:)=disp(1).bottomleft(1,:)+dispincrement(i);
    disp(i).topright(1,:)=disp(1).topright(1,:)+dispincrement(i);
    disp(i).bottomright(1,:)=disp(1).bottomright(1,:)+dispincrement(i);
end
h=figure;
set(h,'position',[0,0,450,265]);
axes('position',[0.075,0.45,0.75,0.5]);
count=1;
for i=1:8
    digit1(count)=patch(disp(i).topcenter(1,:),disp(i).topcenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).middlecenter(1,:),disp(i).middlecenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).bottomcenter(1,:),disp(i).bottomcenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).topleft(1,:),disp(i).topleft(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).bottomleft(1,:),disp(i).bottomleft(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).topright(1,:),disp(i).topright(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit1(count)=patch(disp(i).bottomright(1,:),disp(i).bottomright(2,:),'b','EdgeAlpha',0);
    count=count+1;
end
%Time
for i=2:6
    disp(i)=disp(1);
    disp(i).topcenter(1,:)=disp(1).topcenter(1,:)+dispincrement(i);
    disp(i).middlecenter(1,:)=disp(1).middlecenter(1,:)+dispincrement(i);
    disp(i).bottomcenter(1,:)=disp(1).bottomcenter(1,:)+dispincrement(i);
    disp(i).topleft(1,:)=disp(1).topleft(1,:)+dispincrement(i);
    disp(i).bottomleft(1,:)=disp(1).bottomleft(1,:)+dispincrement(i);
    disp(i).topright(1,:)=disp(1).topright(1,:)+dispincrement(i);
    disp(i).bottomright(1,:)=disp(1).bottomright(1,:)+dispincrement(i);
end
axes('position',[0.025,0.015,0.75,0.5]);

count=1;
for i=1:6
    digit2(count)=patch(disp(i).topcenter(1,:),disp(i).topcenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).middlecenter(1,:),disp(i).middlecenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).bottomcenter(1,:),disp(i).bottomcenter(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).topleft(1,:),disp(i).topleft(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).bottomleft(1,:),disp(i).bottomleft(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).topright(1,:),disp(i).topright(2,:),'b','EdgeAlpha',0);
    count=count+1;
    digit2(count)=patch(disp(i).bottomright(1,:),disp(i).bottomright(2,:),'b','EdgeAlpha',0);
    count=count+1;
end
%date
c=clock;
%day
cur_digit(1)=floor(c(3)/10);
cur_digit(2)=c(3)-(cur_digit(1)*10);
%month
cur_digit(3)=floor(c(2)/10);
cur_digit(4)=c(2)-(cur_digit(3)*10);
%year
cur_digit(5)=floor(c(1)/1000);
cur_digit(6)=floor(c(1)/100)-(cur_digit(5)*10);
cur_digit(7)=floor(c(1)/10)-((cur_digit(5)*100)+(cur_digit(6)*10));
cur_digit(8)=c(1)-((cur_digit(5)*1000)+(cur_digit(6)*100)+(cur_digit(7)*10));

%updateclock
for i=1:8
if cur_digit(i)==0
    set(digit1(i*7-5),'FaceAlpha',0);
elseif cur_digit(i)==1
    set(digit1(i*7-6:i*7-2),'FaceAlpha',0);
elseif cur_digit(i)==2
    set(digit1(i*7-3),'FaceAlpha',0);
    set(digit1(i*7),'FaceAlpha',0);
elseif cur_digit(i)==3
    set(digit1(i*7-3),'FaceAlpha',0);
    set(digit1(i*7-2),'FaceAlpha',0);
elseif cur_digit(i)==4
    set(digit1(i*7-6),'FaceAlpha',0);
    set(digit1(i*7-2),'FaceAlpha',0);
    set(digit1(i*7-4),'FaceAlpha',0);
elseif cur_digit(i)==5
    set(digit1(i*7-2),'FaceAlpha',0);
    set(digit1(i*7-1),'FaceAlpha',0);
elseif cur_digit(i)==6
    set(digit1(i*7-1),'FaceAlpha',0);
elseif cur_digit(i)==7
    set(digit1(i*7-5),'FaceAlpha',0);
    set(digit1(i*7-4),'FaceAlpha',0);
    set(digit1(i*7-3),'FaceAlpha',0);
    set(digit1(i*7-2),'FaceAlpha',0);
elseif cur_digit(i)==9
    set(digit1(i*7-4),'FaceAlpha',0);
    set(digit1(i*7-2),'FaceAlpha',0);
end
end
decode=1;
while decode~=0
c=clock;
%hours
cur_digit2(1)=floor(c(4)/10); 
cur_digit2(2)=c(4)-(cur_digit2(1)*10);
%minutes
cur_digit2(3)=floor(c(5)/10);
cur_digit2(4)=c(5)-(cur_digit2(3)*10);
%seconds
c(6)=round(c(6));
cur_digit2(5)=floor(c(6)/10);
cur_digit2(6)=c(6)-(cur_digit2(5)*10);
if cur_digit2(5)==6
    cur_digit2(5)=0;
    cur_digit2(6)=1;
end
for i=1:42
    set(digit2(i),'FaceAlpha',1);
end
%updatetime
for i=1:6
if cur_digit2(i)==0
    set(digit2(i*7-5),'FaceAlpha',0);
elseif cur_digit2(i)==1
    set(digit2(i*7-6:i*7-2),'FaceAlpha',0);
elseif cur_digit2(i)==2
    set(digit2(i*7-3),'FaceAlpha',0);
    set(digit2(i*7),'FaceAlpha',0);
elseif cur_digit2(i)==3
    set(digit2(i*7-3),'FaceAlpha',0);
    set(digit2(i*7-2),'FaceAlpha',0);
elseif cur_digit2(i)==4
    set(digit2(i*7-6),'FaceAlpha',0);
    set(digit2(i*7-2),'FaceAlpha',0);
    set(digit2(i*7-4),'FaceAlpha',0);
elseif cur_digit2(i)==5
    set(digit2(i*7-2),'FaceAlpha',0);
    set(digit2(i*7-1),'FaceAlpha',0);
elseif cur_digit2(i)==6
    set(digit2(i*7-1),'FaceAlpha',0);
elseif cur_digit2(i)==7
    set(digit2(i*7-5),'FaceAlpha',0);
    set(digit2(i*7-4),'FaceAlpha',0);
    set(digit2(i*7-3),'FaceAlpha',0);
    set(digit2(i*7-2),'FaceAlpha',0);
elseif cur_digit2(i)==9
    set(digit2(i*7-4),'FaceAlpha',0);
    set(digit2(i*7-2),'FaceAlpha',0);
end
end
drawnow;   
end

