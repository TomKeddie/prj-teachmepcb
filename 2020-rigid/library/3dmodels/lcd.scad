module_size_x=72.70;
module_size_y=56;
module_size_z=7.6;

connector_size_x=2.54*2;
connector_size_y=2.54*20;
connector_size_z=9.1-3.3;

connector_pos_x=3.46+2.54/2-module_size_x/2;

clearance_z=5;

support_diameter=2;

support_pos= [ [-72.7/2+12.2, 52/2], [-72.7/2+70.7, 52/2], [-72.7/2+12.2, -52/2], [-72.7/2+70.7, -52/2],];

union() {
    // pcb & display
    translate([0,0,clearance_z+module_size_z/2]) cube([module_size_x, module_size_y, module_size_z], center=true);
    
    for (loc=support_pos) {
        translate([loc[0], loc[1]]) cylinder(d=support_diameter, h=clearance_z, $fn=36);
    }
    
    translate([connector_pos_x,0,connector_size_z/2]) cube([connector_size_x, connector_size_y, connector_size_z], center=true);
}