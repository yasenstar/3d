use <../lib/christmas_tree.scad>
use <../lib/snowman.scad>
use <../lib/star.scad>

// Merry Christmas and Happy New Year from Volvo Group
// Author: Xiaoqi Zhao
// Date: Dec 23rd, 2022

translate([0,30,0])
union() {
    // Volvo Logo Text
    translate([-38,-22,20])
    rotate([90,0,30])
    color("Blue")
    linear_extrude(7)
    scale(0.12)
        import("volvo_logotype.svg");
    
    // Volvo Iron Mark Logo
    translate([-40,-20,0])
    rotate([90,0,30])
    color("Silver")
    linear_extrude(8)
    scale(0.05)
        import("volvo.svg");
}

// Excavator
translate([12,5,-14])
rotate([90,0,0])
linear_extrude(10)
    import("Product_Volvo Wheel Loader_Black.svg");

// Excavator
translate([0,45,-5])
rotate([90,0,-20])
linear_extrude(10)
    import("Product_Volvo Truck US_Black.svg");

// Snowman

translate([-2,25,4.5])
rotate([0,0,225])
scale(0.8)

translate([60,-10,0])
rotate([0,0,100])
snowman(10, 7, 5, 1);

translate([20,0,0]){
    // Christmas Tree
    translate([28,25,0]) scale(0.9) christmasTree(5,50);
    
    // Top Star
    translate([27.5,23,45]) {
        rotate([90,-15,180])
        scale(0.4)
        star(5, 15, 5, 2);

        rotate([90,-21,0])
        scale(0.4)
        star(5, 15, 5, 2);
    }
}