uses crt;
var
ch:char;
wzy,cdf,pp,xxxxxxxx,y,i,j,m,n,p,xx,k,kk,score,kind,hp,qwe,level,de,nono:longint;
a:array[1..80,1..25] of integer;
begin
pp:=25;
xxxxxxxx:=1;
Y:=0;
nono:=0;
for i:=30 to 50 do
for j:=1 to 24 do
begin
gotoxy(i,j);
textbackground(blue);
write(' ');
a[i,j]:=0;
end;
p:=40;score:=0;hp:=100;level:=1;
a[p,25]:=10;
textcolor(white);
randomize;
repeat
inc(score);
repeat
for i:=30 to 50 do a[i,24]:=0;
textcolor(white);
gotoxy(1,1);
write('score',score);
gotoxy(1,2);
write('hp ',hp);
gotoxy(1,3);
write('level ',level);
for m:=1 to 25 do
  begin
    gotoxy(29,m);
    textbackground(black);
    write(' ');
    gotoxy(51,m);
    textbackground(black);
    write(' ');
  end;
textbackground(blue);
j:=2;
i:=trunc(random(80))+1;
kind:=trunc(random(17));
if trunc(random(3))=2 then if kind<>10 then kind:=15;
a[i,j]:=kind;
if a[i,j]=11 then if i>46 then a[i,j]:=0;
if a[i,j]=10 then a[i,j]:=0;
for m:=30 to 50 do
for n:=1 to 25 do
begin
if a[m,n]=1 then if wzy=0 then begin textcolor(white);gotoxy(m,n);write('&~');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=2 then if wzy=0 then begin textcolor(white);gotoxy(m,n);write('*'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=3 then if wzy=0 then begin textcolor(yellow);gotoxy(m,n);write('$'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=4 then if wzy=0 then begin textcolor(red);gotoxy(m,n);write('+');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=5 then if wzy=0 then begin textcolor(red);gotoxy(m,n);write('!');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=6 then if wzy=0 then begin textcolor(green);gotoxy(m,n);write('^');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=7 then if wzy=0 then begin textcolor(green);gotoxy(m,n);write('%');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=8 then if wzy=0 then begin textcolor(brown);gotoxy(m,n);write(':');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=9 then if wzy=0 then begin textcolor(brown);gotoxy(m,n);write('@');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=11 then if wzy=0 then begin textcolor(white);gotoxy(m,n);write('~**~');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=10 then begin textcolor(white);gotoxy(m,n);write('');end;
if a[m,n]=16 then if wzy=0 then begin textcolor(green);gotoxy(m,n);write('');end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=12 then if wzy=0 then begin textcolor(yellow);gotoxy(m,n);write('�'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=13 then if wzy=0 then begin textcolor(yellow);gotoxy(m,n);write('�'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=14 then if wzy=0 then begin textcolor(yellow);gotoxy(m,n);write('�'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
if a[m,n]=15 then if wzy=0 then begin textcolor(brown);gotoxy(m,n);write('XX'); end else begin textcolor(white);gotoxy(m,n);write('&~');wzy:=wzy-1;end;
end;
if cdf>0 then begin clrscr;cdf:=cdf-1;end;
case level of
1:de:=150;
2:de:=130;
3:de:=110;
4:de:=90;
5:de:=70;
end;
if cdf>0 then begin clrscr;cdf:=cdf-1;end;
delay(de);
clrscr;
for i:=2 to 25 do
  if (a[50,i]=1)or (wzy>0)or(a[50,i]=15) then
   begin a[49,i]:=a[50,i];a[50,i]:=0;end;
for i:=50 downto 30 do
for j:=23 downto 2 do
if (a[i,j]<>0) then
begin
a[i,j+1]:=a[i,j];
a[i,j]:=0;
end;

case a[p,24] of
3:if wzy=0 then score:=score+1000 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
2:if wzy=0 then if nono=0 then hp:=hp-30 else nono:=nono-1 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
1:begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
4:if wzy=0 then hp:=hp+35 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
5:if wzy=0 then hp:=hp+15 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
6:if wzy=0 then xxxxxxxx:=-xxxxxxxx else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
7:if wzy=0 then nono:=nono+1 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
8:if wzy=0 then cdf:=100 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
9:if wzy=0 then wzy:=175 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
16:if wzy=0 then hp:=100 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
11:if wzy=0 then hp:=hp-10 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
12:if wzy=0 then score:=score+500 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
13:if wzy=0 then score:=score+1500 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
14:if wzy=0 then score:=score+200 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
15:if wzy=0 then y:=y+49+level*3 else begin
   qwe:=random(99);
   if nono=0 then hp:=hp-qwe else
     if nono>1 then nono:=nono-2 else
       begin nono:=nono-1;hp:=hp-qwe div 2;end;
  end;
end;
if nono>=2 then nono:=2;
if nono>0 then
begin
  gotoxy(1,4);
  if nono>1 then
    writeln('you cant defeat me for',nono,'times')
  else writeln('you cant defeat me for',nono,'time');
end;
if xxxxxxxx=-1 then begin gotoxy(1,5);writeln('you can get extra hp');end
else if hp>100 then hp:=100;
if cdf>0 then begin clrscr;cdf:=cdf-1;end;
if (a[p-1,24]=1)or(a[p-1,24]>0)and(wzy>0)then begin if nono=0 then hp:=hp-10 else nono:=nono-1;end;
if (a[p-1,24]=11)and(wzy=0)then begin if nono=0 then hp:=hp-30 else nono:=nono-1;end;
if (a[p-2,24]=11)and(wzy=0)then begin if nono=0 then hp:=hp-30 else nono:=nono-1;end;
if (a[p-3,24]=11)and(wzy=0)then begin if nono=0 then hp:=hp-10 else nono:=nono-1;end;
if (a[p-1,24]=15)and(wzy=0)then begin if nono=0 then y:=y+49+level*3 else nono:=nono-1;end;
if score>=5000*level then
begin
level:=level+1;
gotoxy(1,3);
textcolor(white);
write('Level Up');
delay(1000);
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
until  keypressed;
if y=0 then
begin
ch:=readkey;
if ch='e' then exit;
if ch='p' then repeat
               gotoxy(1,6);
               write('press anykey to start');
               until keypressed;
if ch='d' then
if p<50 then
begin p:=p+1;a[p-1,pp]:=0;a[p,pp]:=10; end;
if ch='a' then
if p>30 then
begin p:=p-1;a[p+1,pp]:=0;a[p,pp]:=10; end;
end else
begin
      gotoxy(p,pp-1);
      textcolor(brown);
      if y mod 2 =1 then write('+') else write('-');
      y:=y-1;
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
