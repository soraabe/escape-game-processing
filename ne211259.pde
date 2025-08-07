PImage start, door, open, bom, wall, floor, roomclose, roomopen, takara, Mimic, bakuhatu
  , safe, safeopen, keey, winner, gakuya, geki, mono, syatta, akisyatta, tana, akitana, paper
  , gekinaka, han, onkyou, suraido, nazo, reba;
void setup() {
  size(800, 500);
  background(255, 255, 255);
  textFont(createFont("SansSerif", 35, true));
  start=loadImage("button_start1.png");
  door=loadImage("door_closeのコピー.png");
  open=loadImage("door_open1のコピー.png");
  bom=loadImage("jigenbakudan-1.png");
  wall=loadImage("18697.png");
  floor=loadImage("15655.png");
  roomclose=loadImage("S__2686981.jpg");
  roomopen=loadImage("S__2686982.jpg");
  takara=loadImage("kaizoku_takarabako.png");
  Mimic=loadImage("character_game_mimic.png");
  bakuhatu=loadImage("bakuhatsu.png");
  safe=loadImage("g.png");
  safeopen=loadImage("スクリーンショット 2021-06-27 10.30.22.png");
  keey=loadImage("key.png");
  winner=loadImage("pose_dance_ukareru_man.png");
  gakuya=loadImage("3127034_s.jpg");//楽屋
  geki=loadImage("building_gekijou_theater.png");//劇場
  mono=loadImage("22802454.jpg");//物置背景
  syatta=loadImage("S__3153928.jpg");//シャッターとじ
  akisyatta=loadImage("S__3153927.jpg");//シャッター秋
  tana=loadImage("tana_seiriseiton_yes.png");
  akitana=loadImage("tana_empty.png");
  paper=loadImage("paper.png");
  gekinaka=loadImage("building_gekijou_theater_shitsunai.png");
  han=loadImage("han.png");
  onkyou=loadImage("onkyou.jpg");
  suraido=loadImage("suraido.jpg");
  nazo=loadImage("nazo.png");
  reba=loadImage("reba.jpg");
}
boolean lock = false; 
boolean onetwo=false;
boolean escapelicense=false;
float scene;//
int first=-1;
int time;
int sikaku_x;
int sikaku_y;
int wall_leftop;
int wall_lestbottom;
int wall_rightop;
int wall_rightbottom;
int box=0;
int counter=0;
int safex=311;
int safemove;
int safecounter;
int move;
int havekey;
int dooropen;
int doorcounter;
int reba1y=319;
int reba2y=319;
int reba3y=319;
int reba4y=319;
int reba1c=0;
int reba2c=0;
int reba3c=0;
int reba4c=0;
int ido1=0;
int ido2=0;
int ido3=0;
int ido4=0;
{
  scene=first;
}
void startgame() {
  background(205);
  fill(255, 0, 0);
  image(geki, 250, 100, geki.width/1.5, geki.height/1.5);
  text("劇場からの脱出", 300, 440);
  text("スタートボタンをクリックでゲームスタート", 10, 80);
  image(start, 430, 260, start.width/3, start.width/3);
}


void draw() {
  if (scene==-1) {///シーンの流れ
    fill(0, 0, 0);
    startgame();
  }
  if (scene==1) {
    room1();
  }
  if (scene==2) {
    room2();
  }
  if (scene==3) { //////ここ！
    image(onkyou, 0, 0, 800, 500);
    room3();
  }
  if (scene==3.5) {
    fill(100, 100, 100, 7);
    rect(0, 0, 800, 800);
    image(suraido, 60, 25, 680, 480);
    image(reba, 133, reba1y-88*ido1, 50, 25);
    image(reba, 300, reba2y-88*ido2, 50, 25);
    image(reba, 472, reba3y-88*ido3, 50, 25);
    image(reba, 639, reba4y-88*ido4, 50, 25);
    if (ido1==1&&ido2==0&&ido3==1&&ido4==2) {
      fill(#D88182);
      text("何かが動いた音がした", 80, 440);
    }
  }
  if (scene==4) {
    room4();
  }
  if (scene==4.1) {
    fill(100, 100, 100, 3);
    rect(0, 0, 800, 800);
    image(nazo, 175, 25, 450, 450);
  }
  if (scene==4.2) {
    room4();
    text("グラフに当てはまるものを探そう", 100, 400);
  }
  if (scene==5) {
    background(255);
    image(bakuhatu, 50, 200, 300, 300);//本物おおおおおおおおおおおおおおおおおおおおお
    image(winner, 500, 100, 300, 500);//本物
    text("脱出成功！！", 400, 50);
    text("ENTERでスタートへ戻る", 50, 150);
    fill(#A2AF12);
  }
}
void room0() {
}
void bomb() {
  image(bakuhatu, 0, 0, 800, 500);
}
void room1() {
  background(0, 0, 0);
  fill(255, 0, 0);
  text("劇場の餌食となった、、", 150, 40);
  text("Enterでスタートに戻る", 150, 80);
  if (box==0) {
    background(255, 255, 255);
    image(floor, 0, 0, 800, 500);
    fill(#C4080C);
    quad(150, 258, -204, 502, 1002, 502, 669, 269);
    image(gekinaka, -20, -45, 840, 520);
    if (safecounter<=3) {
      //  image(safe, safex, 300, 180, 150);
      image(safe, safex, 98, 87, 82);
    }
    if (safecounter==0&&safex<=550&&mouseX>safex&&mouseX<safex+105&&mouseY<176&&mouseY>110) {
      safex+=3;
    }
    if (safecounter==1&&safex>=310&&mouseX>safex&&mouseX<safex+105&&mouseY<176&&mouseY>110) {
      safex-=4;
    }
    if (safecounter==2&&safex<=550&&mouseX>safex&&mouseX<safex+105&&mouseY<176&&mouseY>110) {
      safex+=5;
    }
    if (safecounter==3&&safex>=310&&mouseX>safex&&mouseX<safex+105&&mouseY<176&&mouseY>110) {
      safex-=6;
    }
    if (safecounter>3) {
      //  image(safeopen, safex-10, 270, 240, 185);
      image(safeopen, safex-10, 97, 100, 87);
      image(keey, safex+15, 110, 50, 50);
      havekey=1;
    }
    if (safecounter>4) {   
      image(safeopen, safex-10, 97, 100, 87);
      fill(#E6F080);
      text("搬入口の鍵を手に入れた！", 200, 50);
      havekey=1;
    }
    fill(#A2AF12);
    triangle(10, 240, 30, 230, 30, 250);//move left
    triangle(770, 230, 770, 250, 790, 240);//move right
    image(takara, 200, 98, 87, 82);//わなの位置
  } else if (box==1) {     
    image(Mimic, 200, 98, 87, 82);
  }
}

void room2() {//搬入口入口
  background(255, 255, 255);
  image(roomclose, 0, 0, 800, 500);
  // image(syatta,10,340,180,70);
  image(han, 84, 30, 120, 40);
  if (lock==true) {
    text("搬入口の鍵が必要なようだ・・", 280, 80);
  }
  if (dooropen==1) {
    image(roomopen, 0, 0, 800, 500);
    image(han, 84, 30, 120, 40);
  }
  fill(#A2AF12);
  triangle(770, 230, 770, 250, 790, 240);//move right
  //  triangle(10, 240, 30, 230, 30, 250);//move left
}
void room3() {
  image(onkyou, 0, 0, 800, 500);
  fill(#A2AF12);
  triangle(10, 240, 30, 230, 30, 250);//move right
}
void room4() {///搬入口
  image(mono, 0, 0, 800, 500);//背景
  image(tana, 0, 169, 150, 200);
  image(akitana, 140, 169, 150, 200);
  image(paper, 228, 186, 35, 32);
  image(syatta, 320, 69, 450, 300);//////出口の鍵を使ったらのif文を追加する
  if (ido1==1&&ido2==0&&ido3==1&&ido4==2) {
    image(akisyatta, 320, 69, 450, 300);
    escapelicense=true;
  } else {
    escapelicense=false;
  }
  fill(#A2AF12);
  triangle(400, 495, 350, 465, 450, 465);
}

void mousePressed() {
  //  println(mouseX, mouseY);450, 265, 100, 70
  println(mouseX, mouseY, scene, doorcounter, "escapelisence");
  println(ido1, ido2, ido3, ido4);
  if (scene==0) {
    if (mouseX>340&&mouseX<400&&mouseY>240&&mouseY<295) {
      scene=0.5;
    }
  }
  if (scene!=first||scene!=0) {
    //  scene=(scene+1)%5;//
  }
  //  println(scene);
  if (scene==first) {
    if (mouseX>450&&mouseX<550&&mouseY>250&&mouseY<340) {
      scene=1;//
    }
  }

  if (scene!=2&&scene!=3) {
    if (counter==2) {
      scene=1;
      println("こっち？");//
    }
  }
  if (scene==1) {
    if (mouseX>safex&&mouseX<safex+165&&mouseY<176&&mouseY>110) {
      safecounter=safecounter+1;//回数
    }
    if (mouseX>200&&mouseX<280&&mouseY<165&&mouseY>110) {
      box=1;
    }
  }
  if (scene==1) {
    if (mouseX<50) {
      scene=2;
    }
    if (mouseX>750) {
      scene=3;
    }
  }
  if (scene==3&&mouseX>263&&mouseX<565&&mouseY<350&&mouseY>300) {
    scene=3.5;
  }
  if (scene==3.5&&mouseY>390) {
    scene=3;
  }
  if (scene==3.5&&mouseY<377&&mouseY>118) {

    if (mouseX<240) {
      reba1c=reba1c+1;
      ido1=reba1c%3;
    } else if (mouseX<414) {
      reba2c=reba2c+1;
      ido2=reba2c%3;
    } else if (mouseX<580) {
      reba3c=reba3c+1;
      ido3=reba3c%3;
    } else {
      reba4c=reba4c+1;
      ido4=reba4c%3;
    }
    println(reba1c, reba2c, reba3c, reba4c);
    println(ido1, ido2, ido3, ido4);
  }
  if (scene==2&&mouseX>750) {
    scene=1;
  }
  if (scene==2&&havekey!=1&&mouseX>70&&mouseX<200&&mouseY<350&&mouseY>150) {
    lock=true;
  }

  if (havekey==1&&scene==2&&mouseX>70&&mouseX<200&&mouseY<350&&mouseY>150) {
    dooropen=1;
    doorcounter+=1;///ドアカウンターってなんや
  }
  if (scene==3&&mouseX<50) {
    scene=1;
  }
  if (scene==4.1) {
    scene=4.2;
  }
  if ((scene==4.2||scene==4)&&mouseX>228&&mouseX<262&&mouseY<218&&mouseY>186) {
    scene=4.1;
  }
  if (scene==2&&doorcounter>=2&&scene!=5&&mouseX>60&&mouseX<180&&mouseY<365&&mouseY>180) {
    scene=4;//////ここ！！
  }
  if ((scene==4||scene==4.1||scene==4.2)&&mouseX>353&&mouseY<348&&mouseX<737&&mouseY>169&&escapelicense==true) {///ここに脱出の鍵の取得とマウスの位置を条件にする
    scene=5;
    counter=1;
  }
  if ((scene==4||scene==4.2)&&mouseY>450) {//入り口に戻る
    scene=2;
  }
  if (scene==2) {
    counter=1;
  }
}

void keyPressed() {
  if (box==1) {
    if (key==ENTER) {
      scene=-1;
      counter=0;
      safecounter=0;
      dooropen=0;
      doorcounter=0;
      havekey=0;
      lock = false; 
      box=0;
    }
  }
  if (scene==5) {//初期化///////ここ！！
    if (key==ENTER) {
      scene=-1;
      counter=0;
      safecounter=0;
      dooropen=0;
      doorcounter=0;
      havekey=0;
      lock = false;
      ido1=ido2=ido3=ido4=0;
    }
  }
}
