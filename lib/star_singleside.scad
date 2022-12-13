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

translate([0,8,2.5])
rotate([90,-15,0])
star(5, 15, 8, 3);