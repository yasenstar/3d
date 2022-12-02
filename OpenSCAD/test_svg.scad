// 3D Volvo Iron Logo

$fn=500;

union() {

resize([40,40,10])
linear_extrude(10)
    import("volvo.svg");


translate([2,18,9])
linear_extrude(10, center = true)
    scale(0.11)
    import("volvo_logotype.svg");;
    
}