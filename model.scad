
include <measures.scad>;

module lid_surface()
{
    // center
    circle(r=lid_center_radius);

    // appendix
    translate([lid_appendix_excentricity, 0, 0])
    circle(r=lid_appendix_radius);

    // flattened connection
    polygon([
        [0, -lid_center_radius],
        [lid_appendix_excentricity, -lid_appendix_radius],
        [lid_appendix_excentricity, +lid_appendix_radius],
        [0, +lid_center_radius]
        ]);
}

module lid()
{
    linear_extrude(lid_height)
    lid_surface();
}

module body(cutout=true)
{
    // top
    translate([0, 0, -body_top_height])
    linear_extrude(body_top_height)
    difference()
    {
        circle(r=body_top_outer_radius);
        if(cutout==true){
            circle(r=body_top_inner_radius);
            }
    }

    // center
    center_offset_z = - body_top_height;
    translate([0, 0, center_offset_z - body_center_height])
    difference()
    {
        cylinder(r=body_center_radius, h=body_center_height);
        if(cutout==true)
        cylinder(
            r=body_center_radius-material_thickness,
            h=body_center_height + nothing
            );
    }

    // cone
    cone_offset_z = center_offset_z - body_center_height;
    translate([0, 0, cone_offset_z - body_cone_height])
    difference()
    {
        cylinder(
            h=body_cone_height,
            r1=body_cone_lower_radius,
            r2=body_cone_upper_radius
            );
        if(cutout==true)
        cylinder(
            h=body_cone_height + nothing,
            r1=body_cone_lower_radius - material_thickness,
            r2=body_cone_upper_radius - material_thickness
            );
    }

    // bottom sphere
    sphere_offset_z = cone_offset_z - body_cone_height;
    translate([0, 0, sphere_offset_z])
    sphere(r=body_bottom_radius);
}

module joint()
{
    translate([-lid_center_radius - 1/2*joint_x, 0, 0])
    cube([joint_x, joint_y, joint_z], center=true);
}

//body();
//lid();
//joint();

module tube(cutout=true)
{
    body(cutout);
    lid();
    joint(); 
}
    
tube(cutout=true);

//Volumen muß noch ausgerechnet werden 
