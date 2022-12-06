// exteria walls

exteria_length = 700;
exteria_height_base = 120;
exteria_height_1f = 330;
exteria_height_2f = 330;
exteria_height_roof = 250;
exteria_depth = 1200;
exteria_depth_base = 600;
depth_balcony = 500;
height_base = 330;
wall_thickness = 15;

roof_width = 500;
roof_angle = 60;

module base_floor() {

    translate([0, 0, exteria_height_base - height_base])
    linear_extrude(height_base)
    difference() {
        square([exteria_length, exteria_depth_base]);
        offset(-wall_thickness)
            square([exteria_length, exteria_depth_base]);
    }
}

module first_floor() {

    translate([0, 0, exteria_height_base + wall_thickness])
    linear_extrude(height_base)
    difference() {
        square([exteria_length, exteria_depth]);
        offset(-wall_thickness)
            square([exteria_length, exteria_depth]);
    }
}

module second_floor() {

    translate([0, 0, exteria_height_base + exteria_height_1f + wall_thickness * 2])
    linear_extrude(height_base)
    difference() {
        square([exteria_length, exteria_depth]);
        offset(-wall_thickness)
            square([exteria_length, exteria_depth]);
    }
}

module roof() {
    
    // left part
    translate([0,0,exteria_height_base + exteria_height_1f + exteria_height_2f + wall_thickness * 3])
    rotate([0,-50,0])
    color("brown")
    linear_extrude(wall_thickness/2)
    translate([-roof_width/5, 0])
    square([roof_width*1.3, exteria_depth]);
    
    // right part
    translate([roof_width/5*3,0,exteria_height_base + exteria_height_1f + exteria_height_2f * 2.5 + wall_thickness * 3])
    rotate([0,50,0])
    color("brown")
    linear_extrude(wall_thickness/2)
    translate([roof_width/5, 0])
    square([roof_width*1.3, exteria_depth]);
}

module grounds() {
    
    // 1F
    translate([0,0,exteria_height_base])
    linear_extrude(wall_thickness)
        square([exteria_length, exteria_depth + depth_balcony]);
    
    // 2F
    translate([0,0,exteria_height_base + exteria_height_1f + wall_thickness])
    linear_extrude(wall_thickness)
        square([exteria_length, exteria_depth]);
    
    // external ground
    translate([0,0,0])
    color("green")
    linear_extrude(0.1)
        square([exteria_length * 4 , exteria_depth * 4], center = true);
    
}

base_floor();
first_floor();
second_floor();
roof();
grounds();