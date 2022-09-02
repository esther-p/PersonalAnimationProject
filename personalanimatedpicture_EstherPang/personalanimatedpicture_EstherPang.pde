// Esther Pang
// Block 1-2a
// For this personal animated picture, I decided to go with the theme of the food I love, which is sushi and Japanese food!

// reference for sushi cart https://www.artstation.com/artwork/xzd8A2
// youtube video for gradient background https://www.youtube.com/watch?v=tIgLJz0ZQD4

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// VARIABLES ===============================================================
int sushibannerY;
PFont blueeyesfont;
PFont sweethomefont;
int counter;
int r = 0;
int g = 190;
int b = 160;
Minim minim;
AudioPlayer song; 


void setup() { // ================================================
  size(700, 700);

  // Initialize sushi banner
  sushibannerY = -150;

  // Initialize counter
  counter = 0;

  // Fonts
  blueeyesfont = createFont("Blue Eyes - Personal Use.otf", 65);
  sweethomefont = createFont("SWEET HOME.otf", 50);

  // audio
  minim = new Minim(this);
  song = minim.loadFile("Nighttime Ramen [jazzy beats lofi hip hop mix].mp3");
  //song.play();
} // END SETUP ===================================================


void draw() { // ==================================================
  // gradient background
  for (int i = 0; i < height; i++)
  {
    stroke(i, g, b);
    line(0, i, width, i);
  }

  noStroke();
  // backboards
  // regular backboards 
  fill(72, 53, 67);
  line(180, 450, 500, 450); //backboards 1
  rect(224, 345, 20, 200); //backboards 2
  rect(274, 345, 25, 200); //backboards 4
  rect(324, 345, 25, 200); //backboards 6
  rect(399, 345, 25, 200); //backboards 9
  fill(75, 56, 68);
  rect(244, 345, 30, 200); //backboards 3
  rect(299, 345, 25, 200); //backboards 5
  rect(374, 345, 25, 200); //backboards 8
  rect(445, 345, 20, 200); //backboards 11
  fill(60, 50, 68);
  rect(349, 345, 25, 200); //backboards 7
  rect(424, 345, 25, 200); //backboards 10

  // shadowed backboards
  fill(77, 49, 51);
  line(180, 450, 500, 450); //backboards 1
  rect(224, 345, 20, 105); //backboards 2
  rect(274, 345, 25, 105); //backboards 4
  rect(324, 345, 25, 105); //backboards 6
  rect(399, 345, 25, 105); //backboards 9
  fill(77, 47, 48);
  rect(244, 345, 30, 105); //backboards 3
  rect(299, 345, 25, 105); //backboards 5
  rect(374, 345, 25, 105); //backboards 8
  rect(445, 345, 20, 105); //backboards 11
  fill(64, 43, 48);
  rect(349, 345, 25, 105); //backboards 7
  rect(424, 345, 25, 105); //backboards 10

  // right side shadowed backboards
  strokeWeight(1);
  stroke(0);
  fill(47, 32, 38);
  rect(485, 345, 13, 200);
  fill(63, 42, 46);
  rect(465, 345, 10, 200);
  rect(475, 345, 12, 200);

  // left side shawdowed backboards
  rect(214, 345, 10, 200);
  rect(202, 345, 12, 200);
  fill(47, 32, 38);
  rect(190, 345, 13, 200);

  // backboard dividers
  stroke(0);
  line(244, 345, 244, 600); //backboards 3
  line(274, 345, 274, 600); //backboards 4
  line(324, 345, 324, 600); //backboards 6
  line(399, 345, 399, 600); //backboards 9
  fill(75, 56, 68);
  line(244, 345, 244, 600); //backboards 3
  line(299, 345, 299, 600); //backboards 5
  line(374, 345, 374, 600); //backboards 8
  line(448, 345, 448, 600); //backboards 11
  line(465, 345, 465, 600);
  fill(60, 50, 68);
  line(349, 345, 349, 600); //backboards 7
  line(424, 345, 424, 600); //backboards 10

  // shelves
  noStroke();
  fill(95, 50, 7);
  rect(230, 425, 230, 10);
  fill(144, 86, 47);
  quad(233, 415, 457, 415, 460, 425, 230, 425);

  // main frame of stand
  noStroke();
  fill(72, 20, 7);
  rect(170, 345, 20, 300); //left frame
  rect(500, 345, 20, 300); //right frame
  quad(163, 330, 527, 330, 522, 345, 168, 345); //top frame
  strokeWeight(3);
  stroke(0);
  line(500, 345, 500, 600);
  line(190, 345, 190, 600);
  strokeWeight(1);
  stroke(118, 43, 43);
  line(188, 345, 188, 600);

  // flags
  fill(240, 96, 60);
  quad(470, 345, 515, 345, 510, 390, 470, 390); // flag 8  
  quad(425, 345, 470, 345, 465, 390, 430, 390); // flag 7
  quad(380, 345, 425, 345, 425, 390, 385, 390); // flag 6 
  quad(335, 345, 380, 345, 380, 390, 335, 390); // flag 5 
  quad(290, 345, 335, 345, 330, 390, 290, 390); //flag 4
  quad(245, 345, 290, 345, 285, 390, 250, 390); // flag 3
  quad(200, 345, 245, 345, 240, 390, 205, 390); // flag 2
  quad(155, 345, 200, 345, 195, 390, 160, 390); // flag 1

  // flag embellishments
  stroke(240, 219, 60);
  strokeWeight(2);
  line(510, 380, 471, 380);
  line(465, 380, 430, 380);
  line(424, 380, 385, 380);
  line(379, 380, 336, 380);
  line(330, 380, 291, 380);
  line(285, 380, 250, 380);
  line(240, 380, 205, 380);
  line(195, 380, 160, 380);

  // noodle bowl decoration
  fill(149, 88, 57);
  stroke(100, 53, 29);
  quad(500, 15, 520, 25, 450, 300, 440, 300);
  quad(530, 15, 550, 25, 410, 300, 400, 300);
  noStroke();
  fill(19, 40, 103);
  arc(350, 150, 300, 300, 0, PI);
  stroke(162, 65, 33);
  strokeWeight(10);
  line(208, 180, 491, 180);

  // roof
  noStroke();
  fill(211, 95, 66);
  quad(190, 250, 500, 250, 527, 330, 163, 330);
  stroke(72, 20, 7);

  // roof planks
  noStroke();
  fill(152, 52, 25);
  triangle(270, 308, 270, 250, 250, 250);//shadows
  triangle(420, 308, 420, 250, 440, 250);//shadows
  strokeWeight(1);
  stroke(72, 20, 7);
  line(163, 330, 190, 250); //first plank
  line(189, 330, 212, 250); //second plank
  line(314, 330, 319, 250); //sixth plank
  line(470, 330, 448, 250); //eleventh plank 
  strokeWeight(0.5);
  line(220, 330, 242, 250); // third plank
  line(246, 330, 264, 250); //fourth plank
  line(280, 330, 291, 250); //fifth plank
  line(345, 330, 345, 250); //middle plank
  line(376, 330, 371, 250); // eighth plank
  line(410, 330, 399, 250); //ninth plank
  line(444, 330, 426, 250); //tenth plank 
  line(501, 330, 478, 250); //twelfth plank

  // roof sign
  strokeWeight(3);
  stroke(90, 15, 26);
  fill(255, 222, 173);
  rect(270, 230, 150, 75);
  fill(185, 74, 22);
  // "sushi" text 
  textAlign(CENTER, CENTER);
  textSize(75);
  textFont(blueeyesfont);
  text("SUSHI", 343, 265);


  // table
  noStroke();
  fill(188, 94, 70);
  rect(140, 602, 410, 55); //table front view bottom
  rect(140, 590, 410, 12, 3); //table front view top
  stroke(0);
  strokeWeight(3);
  line(142, 602, 547, 602); //shadow of table
  fill(224, 168, 143);
  noStroke();
  quad(175, 545, 515, 545, 550, 590, 140, 590); //top area table
  noStroke();
  fill(198, 125, 96);
  quad(185, 530, 505, 530, 515, 545, 175, 545); //shadowed top area


  // Shadows
  strokeWeight(1.5);
  stroke(72, 20, 7);
  line(277, 530, 242, 590); // 1st divider
  // line(175, 545, 515, 545); // guideline
  line(340, 530, 340, 600); // 2nd divider
  line(437, 590, 410, 530); //3rd divider
  line(242, 590, 242, 600); // 1st divider bottom half
  line(437, 590, 437, 600); // 3rd divider bottom half

  //sushi on table
  noStroke();
  fill(129, 65, 22);
  rect(400, 570, 80, 5);
  rect(410, 560, 10, 20);
  rect(460, 560, 10, 20);
  fill(183, 141, 113);
  rect(400, 550, 80, 20);
  fill(144, 86, 47);

  // salmon sushi
  fill(0);
  rect(420, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(425, 550, 10, 5); //rice
  fill(255, 144, 131);
  rect(423, 549, 4, 2);

  // salmon sushi 2
  fill(0);
  rect(432, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(437, 550, 10, 5); //rice
  fill(255, 144, 131);
  rect(435, 549, 4, 2);

  // salmon sushi 3
  fill(0);
  rect(444, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(449, 550, 10, 5); //rice
  fill(255, 144, 131);
  rect(447, 549, 4, 2);


  //sushi on table
  noStroke();
  fill(129, 65, 22);
  rect(300, 570, 80, 5);
  rect(310, 560, 10, 20);
  rect(360, 560, 10, 20);
  fill(183, 141, 113);
  rect(300, 550, 80, 20);
  fill(144, 86, 47);

  //avocado sushi 1
  fill(0);
  rect(320, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(325, 550, 10, 5); //rice
  fill(199, 245, 151);
  rect(323, 549, 4, 2);

  //avocado sushi 2
  fill(0);
  rect(332, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(337, 550, 10, 5); //rice
  fill(199, 245, 151);
  rect(335, 549, 4, 2);

  //avocado sushi 3
  fill(0);
  rect(344, 550, 10, 15, 0, 0, 50, 50); //seaweed
  fill(255);
  ellipse(349, 550, 10, 5); //rice
  fill(199, 245, 151);
  rect(347, 549, 4, 2);


  //Lantern
  stroke(106, 60, 32);
  strokeWeight(10);
  line(180, 300, 150, 290); //lantern holder
  strokeWeight(0.5);
  line(155, 290, 155, 320);
  strokeWeight(7);
  stroke(0);
  line(140, 325, 170, 325); //lantern topper
  noStroke();
  fill(0);
  ellipse(155, 322, 35, 7); //lantern topper
  noStroke();
  fill(0);
  ellipse(155, 435, 35, 10); // lantern bottom
  fill(251, 218, 192);
  rect(125, 325, 60, 110, 30); //lantern light

  //turn on and off lantern
  counter = counter + 1;

  if (counter < 50) {
    fill(250, 230, 192);
    rect(125, 325, 60, 110, 30);
  }

  if (counter > 50) {
    fill(252, 207, 41);
    rect(125, 325, 60, 110, 30);
  }

  if (counter == 100) {
    counter = 0;
  }

  //move and loop sushi welcoming banner
  sushibanner(345, sushibannerY);
  sushibannerY = sushibannerY + 2;
  if (sushibannerY > 750) {
    sushibannerY = -150;
  }
} // end draw =====================================================

//              Parameters
void sushibanner(int x, int y) { //============================================
  pushMatrix(); //start transformations
  translate(x, y);
  // banner
  strokeWeight(1.5);
  noStroke();
  fill(252, 238, 191);
  rect(-225, 50, 50, 75);
  rect(175, 50, 50, 75);
  triangle(-225, 85, -225, 50, -280, 50 );
  triangle(-225, 85, -225, 125, -280, 125 );
  triangle(225, 85, 225, 50, 280, 50 );
  triangle(225, 85, 225, 125, 280, 125 );
  stroke(0);
  //outline for right ribbon
  line(175, 50, 280, 50);
  line(280, 50, 225, 85);
  line(225, 85, 280, 125);
  line(280, 125, 175, 125);
  line(175, 125, 175, 50);
  line(175, 125, 200, 100);
  
  //outline for left ribbon
  line(-175, 50, -280, 50);
  line(-280, 50, -225, 85);
  line(-225, 85, -280, 125);
  line(-280, 125, -175, 125);
  line(-175, 125, -175, 50);
  line(-175, 125, -200, 100);
  stroke(0);
  rect(0, 25, 200, 75);
  rect(-200, 25, 200, 75);

  // sushi mascot on banner
  fill(0);
  ellipse(0, 100, 150, 60);
  stroke(0);
  rect(-75, 0, 150, 100, 30, 30, 0, 0);
  fill(255);
  ellipse(0, 20, 150, 70);
  fill(252, 207, 218);
  ellipse(-50, 105, 10, 5); // left eye
  ellipse(50, 105, 10, 5); // right eye
  fill(255);
  ellipse(-40, 100, 15, 15); //left cheek
  ellipse(40, 100, 15, 15); // right cheek

  // sushi fish eggs
  fill(247, 159, 115);
  stroke(247, 103, 30);
  ellipse(0, 15, 20, 20);
  ellipse(10, 15, 20, 20);
  ellipse(-20, 20, 20, 20);
  ellipse(-35, 15, 20, 20);
  ellipse(-20, 10, 20, 20);
  ellipse(10, 10, 20, 20);
  ellipse(30, 15, 20, 20);
  ellipse(0, 0, 20, 20);
  ellipse(-15, 0, 20, 20);
  ellipse(15, 0, 20, 20);
  ellipse(20, 0, 20, 20);
  ellipse(-25, 0, 20, 20);
  ellipse(0, 25, 20, 20);
  ellipse(0, -10, 20, 20);
  ellipse(25, 23, 20, 20);
  ellipse(40, 15, 20, 20);
  ellipse(-40, 15, 20, 20);
  ellipse(10, 30, 20, 20);
  ellipse(-5, 30, 20, 20);
  ellipse(-23, 28, 20, 20);
  ellipse(-40, 20, 20, 20);


  // "welcome" text on banner
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(100);
  textFont(sweethomefont);
  text(" WEL", -140, 65);
  text(" COME", 130, 65);


  // sushi's smile
  noFill();
  stroke(255);
  strokeWeight(2);
  arc(0, 100, 10, 10, 0, PI);

  popMatrix(); //end transformation
}// end sushibanner=================================================
