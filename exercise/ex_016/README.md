# Exercise 016 using OpenSCAD

## Source Question

![ex_016_question](./ex_016_question.png)

Analysis:

- Use module for the combined special hole, simplify the codes in the main part
- For "special hole", practice `intersection()` function

## Code

```openscad
module special_hole() {
    intersection() {
    union() {
        circle(32);
        translate([0,-20]) square([50,40]);
    }
    #translate([-100,-20]) square([200,40]);
    }
}

linear_extrude(10) {
    difference() {
        union() {
            circle(25);
            translate([0,-25])
                square([164.9-13.8, 50]);
            translate([164.9-13.8,0])
            resize([52,90])
                circle(26);
        }
        circle(17);
        translate([164.9,0]) special_hole();
    }
}
```

## View in OpenSCAD

![ex_016](./ex_016.png)

Date: 2022/12/06

Author: Xiaoqi Zhao