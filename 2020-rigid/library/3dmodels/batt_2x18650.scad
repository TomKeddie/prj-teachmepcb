body_size_x=39.6;
body_size_y=77;
body_size_z=15;

terminal_size_x=6.4;
terminal_size_y=4.6;
terminal_size_z=0.35;
terminal_pos_x=body_size_x/2-10.16; // from centre

module terminal(x,y) {
    translate([x,y, terminal_size_z/2]) cube([terminal_size_x, terminal_size_y, terminal_size_z], center=true);
}

union() {
    translate([0,0,body_size_z/2]) cube([body_size_x, body_size_y, body_size_z], center=true);
    terminal(+terminal_pos_x, +(body_size_y/2+terminal_size_y/2));
    terminal(-terminal_pos_x, +(body_size_y/2+terminal_size_y/2));
    terminal(+terminal_pos_x, -(body_size_y/2+terminal_size_y/2));
    terminal(-terminal_pos_x, -(body_size_y/2+terminal_size_y/2));
}