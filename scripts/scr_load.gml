filechoicebk= global.filechoice;
room_set_persistent(global.currentroom, 0);
script_execute(62/* SCR_GAMESTART */);
global.filechoice= filechoicebk;
file= "file" + string(global.filechoice);
myfileid= file_text_open_read(file);
global.charname= file_text_read_string(myfileid);
file_text_readln(myfileid);
global.lv= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.maxhp= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.maxen= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.at= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.wstrength= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.df= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.adef= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.sp= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.xp= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.gold= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.kills= file_text_read_real(myfileid);
file_text_readln(myfileid);
i= 0;
while(i < 8) {
    global.item[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    global.phone[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}
global.weapon= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.armor= file_text_read_real(myfileid);
file_text_readln(myfileid);
i= 0;
while(i < 512) {
    global.flag[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}
global.plot= file_text_read_real(myfileid);
file_text_readln(myfileid);
i= 0;
while(i < 3) {
    global.menuchoice[i]= file_text_read_real(myfileid);
    file_text_readln(myfileid);
    i++;
}
global.flag[94]= 0;
global.currentsong= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.currentroom= file_text_read_real(myfileid);
file_text_readln(myfileid);
obj_time.time= file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lastsavedkills= global.kills;
global.lastsavedtime= obj_time.time;
global.lastsavedlv= global.lv;
file_text_close(myfileid);
global.hp= global.maxhp;
global.en= global.maxen;
script_execute(59/* scr_tempsave */);
if(global.currentroom < 75) global.area= 0;
if(global.currentroom >= 75) global.area= 1;
global.flag[360]= 0;
global.flag[361]= 0;
global.flag[362]= 0;
global.flag[363]= 0;
global.flag[364]= 0;
scr_dogcheck();
if(dogcheck == 1) room_goto(global.currentroom);