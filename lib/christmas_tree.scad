/* 
Christmas Tree with Star in the top
Author: Xiaoqi Zhao
Date: 2022-12-05
Type of tree:
  1 - complex, single shape
  2 - simple, single shape
  3 - simple, four layers
  4 - no tree branch
  5 - add branch in simple tree back, with leaves supporting
*/

module christmasTree(type,height) {
    // e.g. type = 2, height = 50

    if (type==1) {
        color("brown"){
            cylinder(height,2,0);
        }
        color("green") {
        for (i=[5:0.5:height]) {
            length = height-i;
            for (j=[i*5:25:355+i*5]) {
                translate([0,0,i])
                rotate([0,85,j]) cylinder(length/2.5,0.2,0.2);
                }
            }
        }
    }
    else if (type==2) {
        color("brown"){
            cylinder(height,2,0);
        }
        color("green") {
            translate([0,0,height/7])
            cylinder(height*9/10,height/3,0.2);
            }
        }
    else if (type==3) {
        color("brown"){
            cylinder(height,2,0);
        }
        color("green") {
            translate([0,0,height/7]) {
                layerHeight = height/4;
                cylinder(layerHeight,height/3,height/3*0.6);
                translate([0,0,layerHeight]) cylinder(layerHeight,height/3*0.8,height/3*0.45);
                translate([0,0,layerHeight*2]) cylinder(layerHeight,height/3*0.65,height/3*0.25);
                translate([0,0,layerHeight*3]) cylinder(layerHeight,height/3*0.4,0.02);
            }
        }
    }
    else if (type==4) {
        color("green") {
            translate([0,0,-0.05]) {
                layerHeight = height/5;
                cylinder(layerHeight,height/3,height/3*0.6);
                translate([0,0,layerHeight*0.9]) cylinder(layerHeight*0.1,height/3*0.45,height/3*0.8);
                translate([0,0,layerHeight]) cylinder(layerHeight,height/3*0.8,height/3*0.45);
                translate([0,0,layerHeight*2*0.95]) cylinder(layerHeight*0.11,height/3*0.25,height/3*0.65);
                translate([0,0,layerHeight*2]) cylinder(layerHeight*0.9,height/3*0.65,height/3*0.25);
                translate([0,0,layerHeight*3*0.93]) cylinder(layerHeight*0.09,height/3*0.2,height/3*0.4);
                translate([0,0,layerHeight*3*0.96]) cylinder(layerHeight,height/3*0.4,0.02);
            }
        }
    }
    else if (type==5) { // tree with stem
        color("brown"){
            cylinder(height/2,height/8,0);
        }
        color("green") {
            translate([0,0,height/5]) {
                layerHeight = height/5;
                cylinder(layerHeight*0.1,height/3*0.2,height/3);
                translate([0,0,layerHeight*0.1]) cylinder(layerHeight,height/3,height/3*0.6);
                translate([0,0,layerHeight*0.9]) cylinder(layerHeight*0.1,height/3*0.45,height/3*0.8);
                translate([0,0,layerHeight]) cylinder(layerHeight,height/3*0.8,height/3*0.45);
                translate([0,0,layerHeight*2*0.95]) cylinder(layerHeight*0.11,height/3*0.25,height/3*0.65);
                translate([0,0,layerHeight*2]) cylinder(layerHeight*0.9,height/3*0.65,height/3*0.25);
                translate([0,0,layerHeight*3*0.93]) cylinder(layerHeight*0.09,height/3*0.2,height/3*0.4);
                translate([0,0,layerHeight*3*0.96]) cylinder(layerHeight,height/3*0.4,0.02);
            }
        }
    }
}
    
$fn=100;
christmasTree(5,50);