// Tample of Heaven

for( i = [0 : 360 / 4 : 360 / 4 * 3] ){
    rotate([0,0,i]) {
        translate([300,0,0])
        color([185/255,140/255,119/255])
        cylinder(700,25,25);
    }
}