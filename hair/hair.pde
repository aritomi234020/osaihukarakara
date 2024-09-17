PImage man;
PImage hair;
PImage newhair;

boolean showHair = false;    // hair.pngを表示するかどうか
boolean showNewHair = false; // newhair.pngを表示するかどうか

void setup() {
  size(600, 400); 
  man = loadImage("man.png");
  hair = loadImage("hair.png"); 
  newhair = loadImage("newhair.png");
  
  // 最初にman.pngを表示
  image(man, 200, 80);
}

void draw() {
  background(255); // 背景を白にリセット
  
  // man.pngを再描画
  image(man, 200, 80);
  
  // ユーザーが選択した画像を表示
  if (showHair) {
    image(hair, 278, 85); // hair.pngを指定位置に描画
  }
  
  if (showNewHair) {
    image(newhair, 280, 45); // newhair.pngを指定位置に描画
  }
}

void keyPressed() {
  // キー入力に応じて画像を表示する
  if (key == '1') {
    showHair = true;    // hair.pngを表示
    showNewHair = false; // newhair.pngは非表示
  } else if (key == '2') {
    showHair = false;   // hair.pngは非表示
    showNewHair = true; // newhair.pngを表示
  }
}
