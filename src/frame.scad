frame_thickness = 5;

module a() {
    intersection() {
        linear_extrude(height = frame_thickness, convexity = 10) import(file = "alu-frame.dxf");
        translate([60, 100, 0]) cube([220, 228, frame_thickness]);
    }
}

a();

module b() {
    difference() {
        linear_extrude(height = frame_thickness, convexity = 10) import(file = "alu-frame.dxf");
        translate([60, 100, 0]) cube([220, 228, frame_thickness]);
    }
}

!b();