// Dimension of Nintindo Switch Game Card: 20mm x 30mm x 3mm
// Author: Xiaoqi Zhao
// Date: 2022-12-03

difference() {
    cube([40,30,25]);
    
    for (i = [0:1:3]) {
        #translate([3+i*10, 5, 5]) cube([4,20,30]);
    }
}