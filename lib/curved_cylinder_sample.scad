// sample of curved cylinder
// source: https://reprap.org/forum/read.php?1,193396,193421#msg-193421

union(){
	difference(){
		rotate_extrude(angle=120) translate ([50,0,0]) circle(10);
		difference(){
			cube([120,120,40], center = true);
			translate([30,30,0]) cube([60,60,40], center = true);	
			}
		rotate_extrude(angle=120) translate ([50,0,0]) circle(8);
		difference(){
			cube([120,120,40], center = true);
			translate([30,30,0]) cube([60,60,40], center = true);	
		}
	}
	difference(){
		translate([50,0,0]) rotate([90,0,0]) cylinder(r=10,h=20);
		translate([50,0,0]) rotate([90,0,0]) cylinder(r=8,h=22);
	}
	difference(){
		translate([0,50,0]) rotate([0,270,0]) cylinder(r=10,h=20);
		translate([0,50,0]) rotate([0,270,0]) cylinder(r=8,h=22);
	}	
}