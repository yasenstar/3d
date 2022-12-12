module toothPart() {
    offsetLength = 40 * tan(20.6);
    // echo("length:", offsetLength);
    translate([40,0,0])
    linear_extrude(10)
        polygon([[0,30-offsetLength],[40,30],[40,-30],[0,-(30-offsetLength)]]);
}

rotateAngle = 20.6*2 + (360 - 8 * 20.6*2) / 8;
for (i=[0 : rotateAngle : (360-rotateAngle)]) {
    rotate([0,0,i])
        toothPart();
}