include <measures_tube_holder.scad>;
use <model.scad>;

module base_material()
{
    translate ([
-base_material_x/2,
-base_material_y/2,
-base_material_z]
    ) cube(
        [
        base_material_x,
        base_material_y,
        base_material_z,
        ]
);
}

difference(){
base_material();  
//tube(cutout=false);

translate ([
000,
000,
-001,
])tube(cutout=false);

translate ([
015,
015,
-001,
])
rotate(45)
    tube(cutout=false);
}

// todo: Kühlrippen 

