include <measures.scad>;

cylinder(
        h=lid_height+0.4,
        r=max(lid_center_radius+joint_x , lid_appendix_excentricity+lid_appendix_radius),
        center=true
);
