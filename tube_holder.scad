include <measures_tube_holder.scad>;


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

base_material();
