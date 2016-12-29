uses crt;
var
ch:char;
boss,kkk,i,j,pp,ppp,m,n,p,xx,k,kk,kkkk,bosskill,bosskilladd,score,qq,little2,kind,hp,qwe,bomb,littlebomb,littlebomb2,little,level,de:longint;
a:array[0..81,0..26] of integer;
begin
bomb:=3;
kkkk:=0;
littlebomb:=3;
littlebomb2:=3;
pp:=25;
p:=40;score:=0;hp:=100;level:=1;
a[p,25]:=10;
textcolor(white);
randomize;
repeat
repeat
for i:=30 to 50 do a[i,24]:=0;
textcolor(white);
gotoxy(1,1);
write('score',score);
gotoxy(1,2);
write('hp ',hp);
gotoxy(1,3);
write('level ',level);
gotoxy(1,4);
write('bomb ',bomb);
gotoxy(1,5);
write('littlebomb ',littlebomb);
gotoxy(1,6);
write('littlebomb2 ',littlebomb2);
if ppp>0 then begin little:=little+1;little2:=little2+1;ppp:=ppp-1;end;
if little>=20 then begin littlebomb:=littlebomb+1;little:=little-20;end;
if little2>=20 then begin littlebomb2:=littlebomb2+1;little2:=little2-20;end;
for m:=1 to 25 do
  begin
    gotoxy(29,m);
    textbackground(black);
    write(' ');
    gotoxy(51,m);
    textbackground(black);
    write(' ');
  end;
for i:=30 to 50 do
begin
    if a[i,23]<>10 then a[i,23]:=0;
    gotoxy(i,24);
    textbackground(red);
    write(' ');
  end;
textbackground(blue);
j:=2;
i:=trunc(random(80))+1;
kind:=trunc(random(40-level*level));
if kind<>10 then a[i,j]:=kind;
qq:=trunc(random(2+5*level));
if (kind>5)and(kind<10)and(qq=2) then begin a[i,j]:=kind;end;
if kind<6 then a[i,j]:=kind;
if bosskill=1 then
for m:=30 to 50 do
for n:=1 to 25 do
begin
if a[m,n]=1 then begin textcolor(white);gotoxy(m,n);write('+');end;
if a[m,n]=2 then begin textcolor(white);gotoxy(m,n);write('+');end;
if a[m,n]=3 then begin textcolor(white);gotoxy(m,n);write('+');end;
if a[m,n]=4 then begin textcolor(white);gotoxy(m,n);write('+');end;
if a[m,n]=5 then begin textcolor(white);gotoxy(m,n);write('+');end;
if a[m,n]=6 then begin textcolor(white);gotoxy(m,n);write('');end;
if a[m,n]=7 then begin textcolor(white);gotoxy(m,n);write('@');end;
if a[m,n]=8 then begin textcolor(white);gotoxy(m,n);write('^');end;
if a[m,n]=10 then begin textcolor(white);gotoxy(m,n);write('');end;
end;
case level of
1:de:=50;
2:de:=40;
3:de:=30;
4:de:=20;
5:de:=15;
end;
delay(de);
clrscr;
for i:=50 downto 30 do
for j:=25 downto 2 do
if (a[i,j]<6) then
begin
kkk:=trunc(random(8));
case kkk of
1:if (j<25)and(a[i,j+1]=0) then if a[i,j+1]<>11 then if a[i,j+2]<>201 then begin a[i,j+1]:=a[i,j];a[i,j]:=0;end;
2:if (j>2)and(a[i,j-1]=0) then if a[i,j-1]<>11 then if a[i,j]<>201 then begin a[i,j-1]:=a[i,j];a[i,j]:=0;end;
3:if (i<50)and(a[i+1,j]=0) then if a[i+1,j]<>11 then  if a[i+1,j+1]<>201 then begin a[i+1,j]:=a[i,j];a[i,j]:=0;end;
4:if (i>30)and(a[i-1,j]=0) then if a[i-1,j]<>11 then  if a[i-1,j+1]<>201 then begin a[i-1,j]:=a[i,j];a[i,j]:=0;end;
end;
end;
for i:=30 to 50 do
  for j:=24 downto 1 do
  begin
    if (a[i,j]=8)and((a[i,j-1]=0)or(a[i+1,j]=10))then
      begin
         a[i,j+1]:=8;
         a[i,j]:=0;
       end;
    if (a[i,j]=7)and((a[i,j+1]=0)or(a[i,j+1]=10))then
      begin
         a[i,j+1]:=7;
         a[i,j]:=0;
       end;
    if (a[i,j]=6)and((a[i,j+1]=0)or(a[i,j+1]=10))then
      begin
         a[i,j+1]:=6;
         a[i,j]:=0;
       end;
    if (a[i,j]=101)and((a[i,j+1]=0)or(a[i,j+1]=10))then
      begin
         if a[i,j+2]=10 then begin gotoxy(i,j);textcolor(green);write('!');delay(100);end;
         a[i,j+1]:=101;
         a[i,j]:=0;
       end;
    end;
for i:=30 to 50 do
  for j:=1 to 25 do
    if (a[i,j]=1)and(a[i,j+1]=0) then
    begin
      kk:=trunc(random(4));
      if kk=2 then a[i,j+1]:=101;
   end;
kkkk:=trunc(random(30));

for i:=30 to 50 do
  for j:=5 downto 1 do
   if (a[i,j]=11) then
   begin
     gotoxy(i,j);
      write('"');
      if (i mod 5=kkkk)then begin a[i,j+1]:=101;break;end;
   end;

for i:=30 to 50 do
  for j:=1 to 25 do
    if a[i,j]=201 then
       begin
         if a[i,j-1]>0 then
         begin
           if (a[i,j-1]<6)and(a[i,j-1]>0) then begin sound(20);score:=score+15;gotoxy(i,j-1);textbackground(brown);write(' ');delay(100);end;
           a[i,j-1]:=0;
           a[i,j]:=0;
         end else
         begin
         a[i,j-1]:=201;
         a[i,j]:=0;
         end;
        end;
case a[p,pp-1] of
6:hp:=100;
7:bomb:=bomb+1;
8:ppp:=ppp+50;
101:hp:=hp-10;
end;
a[p,pp-1]:=0;
if bomb>5 then bomb:=5;
if littlebomb>15 then littlebomb:=15;
if littlebomb2>15 then littlebomb2:=15;
if score>=250*level then
begin
level:=level+1;
score:=250*level-250;
boss:=1;
gotoxy(1,3);
textcolor(white);
write('Level Up');
delay(1000);
end;
{boss}if boss=1 then
        begin
          boss:=0;
          for i:=30 to 50 do
            for j:=1 to 25 do
             if a[i,j]<>10 then a[i,j]:=0;
          for i:=30 to 50 do
            for j:=1 to 5 do
              begin
               a[i,j]:=11;
              end;
          end;
bosskill:=1;
bosskilladd:=0;
for i:=1 to 25 do
begin
  for j:=30 to 50 do
  begin
     if a[j,i]=11 then bosskilladd:=bosskilladd+1;
     if bosskilladd>=5 then begin bosskill:=0;break;end;
     end;
   if bosskill=0 then break;
  end;

if level=6 then
begin
gotoxy(1,3);
write('You win!');
gotoxy(1,4);
write('Congratulations!!!!!');
gotoxy(1,5);
write('Designed by Shr and Wzy');
delay (5000);
exit;
end;
for i:=30 to 50 do
  for j:=1 to 25 do
    begin
      case a[i,j] of
      1:begin textcolor(white);gotoxy(i,j);write('+');end;
      2:begin textcolor(white);gotoxy(i,j);write('+');end;
      3:begin textcolor(white);gotoxy(i,j);write('+');end;
      4:begin textcolor(white);gotoxy(i,j);write('+');end;
      5:begin textcolor(white);gotoxy(i,j);write('+');end;
      6:begin textcolor(white);gotoxy(i,j);write('');end;
      7:begin textcolor(white);gotoxy(i,j);write('@');end;
      8:begin textcolor(white);gotoxy(i,j);write('^');end;
      10:begin textcolor(white);gotoxy(i,j);write('');end;
      101:begin textcolor(white);gotoxy(i,j);write('.');end;
      201:begin textcolor(white);gotoxy(i,j);write('*');end;
      end;
end;

until keypressed;
begin

ch:=readkey;
if ch='k' then begin a[p,pp-1]:=201;end;
if ch='l' then if (bomb>0)and(bosskill=1) then begin
                                    for i:=30 to 50 do
                                      for j:=1 to 25 do
                                          if a[i,j]<>10 then
                                          begin
                                            if (a[i,j]>0)and(a[i,j-1]<6) then score:=score+5;
                                            a[i,j]:=0;
                                          end;
                                    for i:=30 to 50 do
                                      for j:=1 to 25 do
                                      begin gotoxy(i,j);textbackground(yellow);write(' ');end;
                                       bomb:=bomb-1;
                                       delay(1000);
                                       textbackground(white);
                                      end;
if ch='j' then if littlebomb>0 then begin
                                      for j:=1 to 25 do
                                        begin
                                          if a[p,j]<>10 then
                                          begin
                                            if (a[p,j]>0)and(a[p,j]<6) then score:=score+5;
                                            a[p,j]:=0;
                                          end;
                                       gotoxy(p,j);write('|');
                                       end;
                                       delay(10);
                                       littlebomb:=littlebomb-1;
                                      end;
if ch='h' then if littlebomb2>0 then begin
                                      for j:=30 to 50 do
                                        begin
                                          if a[j,pp]<>10 then
                                          begin
                                            if (a[j,pp]>0)and(a[j,pp]<6) then score:=score+5;
                                            a[j,pp]:=0;
                                          end;
                                       gotoxy(j,pp);write('-');
                                       end;
                                       delay(10);
                                       littlebomb2:=littlebomb2-1;
                                      end;

if ch='e' then exit;
if ch='p' then repeat
               gotoxy(1,6);
               write('press anykey to start');
               until keypressed;
if ch='d' then
if p<50 then
begin p:=p+1;if a[p,pp]=1 then hp:=hp-15;a[p-1,pp]:=0;a[p,pp]:=10;gotoxy(p,pp);write('');end;
if ch='w' then
if pp>1 then
begin pp:=pp-1;if a[p,pp]=1 then hp:=hp-15;a[p,pp+1]:=0;a[p,pp]:=10;gotoxy(p,pp);write('');end;
if ch='s' then
if pp<25 then
begin pp:=pp+1;if a[p,pp]=1 then hp:=hp-15;a[p,pp-1]:=0;a[p,pp]:=10;gotoxy(p,pp);write('');end;
if ch='a' then
if p>30 then
begin p:=p-1;if a[p,pp]=1 then hp:=hp-15;a[p+1,pp]:=0;a[p,pp]:=10;gotoxy(p,pp);write('');end;
end;

gotoxy(1,1);
write(score);
gotoxy(1,2);
write(hp);
until hp<=0;
gotoxy(1,4);
textcolor(white);
write('GAME OVER');
gotoxy(1,5);
write('Score    ',score);
gotoxy(1,6);
write('Designed by Shr and Wzy');
delay(1500);
for i:=1 to 9000 do
      begin
         delay(1);
         k:=trunc(random(80));
         kk:=trunc(random(25));
         gotoxy(k,kk);
         xx:=random(8);
         case xx of
           1:begin textbackground(red);write(' ');end;
           2:begin textbackground(white);write(' ');end;
           3:begin textbackground(green);write(' ');end;
           4:begin textbackground(brown);write(' ');end;
           5:begin textbackground(black);write(' ');end;
           6:begin textbackground(blue);write(' ');end;
           7:begin textbackground(yellow);write(' ');end;
         end;
       end;
end.
