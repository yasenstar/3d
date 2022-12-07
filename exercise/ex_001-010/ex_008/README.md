# Exercise 008 using OpenSCAD

## Source Question

![ex_008_question](./ex_008_question.png)

Analysis:

- Not like in [ex_007](../ex_007/README.md), all of three exteria radius values are provided
- Use 2D drawing the base, after `linear_extrude` to 3D, then trim the part using `cube`
- [ ] need calculate how to accurate find the center of exteria circle

## Code

```openscad
$fn=100;

difference() {
    linear_extrude(20) {
        difference() {
            union() {
                hull() {
                    translate([0, -25]) circle(35/2);
                    translate([0, 25]) circle(35/2);
                    translate([0,-10]) square([87-45, 20]);
                }
                translate([87-45,-5]) square([45, 10]);
            }
            
            translate([87-45, 35]) circle(25);
            translate([87-45, -35]) circle(25);
            translate([-63, 0]) circle(50);
            
            translate([0, -25]) circle(20/2);
            translate([0, 25]) circle(20/2);
        }
    }
    
    #translate([87-35, -5, 5]) cube([35, 10,10]);
}
```

## View in OpenSCAD

![ex_008](./ex_008.png)

Date: 2022/12/03

Author: Xiaoqi Zhao