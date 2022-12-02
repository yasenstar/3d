character = "KUPER";
font_size = 10;
thickness = 1;

$fn = 100;
sphere(font_size);

intersection() {
sphere(font_size * 1.33 + thickness);
translate([0,0,-font_size-2])
linear_extrude(font_size * 3)
text(character, size = font_size / 3, valign = "center", halign = "center");
}