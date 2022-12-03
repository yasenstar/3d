# Exercise 001 using OpenSCAD

## Source Question

![ex_001_question](./ex_001_question.png)

Analysis:

- This is one flat shape, so better to make 3D model from 2D drawing, using `circle` and `square`
- The 3 small holes with same size are just different in the position
- Practice `difference()` function

## Code

```openscad
rotate([45,0,0])
linear_extrude(5)
difference() {
    circle(40);
    
    translate([-28,0]) circle(5);
    translate([0,28]) circle(5);
    translate([0,-28]) circle(5);
    
    circle(14);
    translate([0,-14]) square([40,28]);
    
}
```

## View in OpenSCAD

![ex_001](./ex_001.png)

Date: 2022/12/02

Author: Xiaoqi Zhao