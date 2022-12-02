// model of a table
// Author: Thom Ives, Ph.D

// Design Parameters
tp_ht = 36;
tp_ln = 48;
tp_wd = 18;
tp_th = 3;
ovhg = 2;
leg_wd = 2.625;

pn_th = 0.5;

// Colors
tc = [0.93, 0.83, 0.68, 1.0]; // top - pine
fc = [0.4, 0.26, 0.13]; // frame - dark brown
pc = [0.93, 0.83, 0.68, 0.7]; // panels - pine - opaque

// Dependent Design Parameters
echo();
fm_ht = tp_ht - tp_th; // 30
fm_ln = tp_ln - 2 * ovhg; // 48
echo("Inner Frame Length", fm_ln - 2 * leg_wd);
fm_wd = tp_wd - 2 * ovhg; // 24;
echo("Min Inner Frame Width", fm_wd - 2 * leg_wd);
// echo ("Max Inner Frame Width", fm_wd -2);
shlf_ht = 18;
mid_hr_fm_ht = fm_ht - shlf_ht - 2 * leg_wd; // mid hrz fm ht;
echo();

// Modules
module top() {
    color(tc)
        translate([-ovhg, -ovhg, fm_ht])
            cube([tp_ln, tp_wd, tp_th]);
}

module legs(xp, yp) {
    color(fc)
        translate([xp, 0, 0])
            cube([leg_wd, leg_wd, fm_ht]);
    
    color(fc)
        translate([xp, yp, 0])
            cube([leg_wd, leg_wd, fm_ht]);
}

module horizontals(ht) {
    color(fc)
        translate([leg_wd, 0, ht])
            cube([fm_ln - 2 * leg_wd, leg_wd, leg_wd]);
    
    color(fc)
        translate([leg_wd, fm_wd - leg_wd, ht])
            cube([fm_ln - 2 * leg_wd, leg_wd, leg_wd]);
    
    color(fc)
        translate([0, leg_wd, ht])
            cube([leg_wd, fm_wd - 2 * leg_wd, leg_wd]);
    
    color(fc)
        translate([fm_ln - leg_wd, leg_wd, ht])
            cube([leg_wd, fm_wd - 2 * leg_wd, leg_wd]);
}

module shelf() {
    color(pc)
        translate([leg_wd, leg_wd, mid_hr_fm_ht + leg_wd - pn_th])
            cube([fm_ln - 2 * leg_wd, fm_wd - 2 * leg_wd, pn_th]);
}

// The executable code
top();
legs(0, fm_wd - leg_wd);
legs(fm_ln - leg_wd, fm_wd - leg_wd);
horizontals(mid_hr_fm_ht);
horizontals((fm_ht - leg_wd));
shelf();