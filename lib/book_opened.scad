// A book with 40 pages and titles (cover and side)
// Author: Xiaoqi Zhao
// Date: 2022-12-05

module book(page_thick, pages, length, width, book_name) {

    union() {
        
        for (i = [0:page_thick:page_thick * pages]) {
            height = i;
            angle = i * 10;
            translate([0,0,height])
            rotate([0,-angle,0])
                cube([width, length, page_thick]);
        }

        rotate([0,-20,0])
        translate([2,length-10,2])
        color("red")
        linear_extrude(0.5)
        scale(0.2)
        text(book_name);

        translate([0,length-7,0.5])
        rotate([90,0,270])
        color("red")
        linear_extrude(0.2)
        scale(0.1)
        text(book_name);
    }
}

book(0.05, 40, 30, 14.8, "New Book");