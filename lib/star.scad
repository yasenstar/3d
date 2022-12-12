module star(numberOfPoints, pointLength, width, height) {
    difference() {
        union() {
            for (i=[1:numberOfPoints]) {
                rotate([0, 0, 360/numberOfPoints*i])
                rotate([0,90,0])
                //scale([1,1,1])
                cylinder(h=pointLength, r1=width*1.5, r2=0, $fn=3);
            }
        }
        translate([0,0,width/2])
        cube(center=true, [pointLength*2+5, pointLength*2+5, width]);
    }
}

translate([-10.5,8,48]) {
rotate([90,-15,180])
scale(0.4)
star(5, 15, 5, 2);


rotate([90,-21,0])
scale(0.4)
star(5, 15, 5, 2);
}