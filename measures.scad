
// millimeters

$fn = 100;
nothing = 0.05;

material_thickness = 0.8;

// lid
lid_length = 13;
lid_center_diameter = 10;
lid_appendix_diameter = 7.5;
lid_height = 1.75;
lid_center_radius = lid_center_diameter/2;
lid_appendix_radius = lid_appendix_diameter/2;
lid_appendix_excentricity = lid_length - lid_center_diameter/2 - lid_appendix_diameter/2;

// lid closure
lid_closure_outer_diameter = 7;
lid_closure_inner_diameter = 5;
lid_closure_height = 5 - lid_height;

// lid-body joint
joint_length = 8.5;
joint_width = 3;

// body
body_height = 31;

body_top_outer_diameter = 9;
body_top_inner_diameter = 7;
body_top_height = 1.5;
body_top_outer_radius = body_top_outer_diameter/2;
body_top_inner_radius = body_top_inner_diameter/2;

body_center_diameter = 8;
body_center_height = 16;
body_center_radius = body_center_diameter/2;

body_cone_upper_diameter = body_center_diameter;
body_cone_lower_diameter = 4;
body_cone_height = 11.5;
body_cone_upper_radius = body_cone_upper_diameter/2;
body_cone_lower_radius = body_cone_lower_diameter/2;

// half sphere
body_bottom_radius = 2;

//lid joint
joint_x = 3.5;
joint_y = 3.2;
joint_z = 2.5;
