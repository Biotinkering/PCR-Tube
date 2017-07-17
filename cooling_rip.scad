include <measures.scad>;


//color("green")
  //  translate([-30, 0, 0])
    //    linear_extrude(height = 15, scale = 0.5,1,1)
      //      square([20, 10], center = true);

nothing=0.001;
rip_length=1.61;   
rip_height=5;

module single_rip()
{
scale([1,2,1])
difference(){            
color("purple")
    translate([0, 0, 0])
    rotate([0,0,90])
            cylinder(r=rip_length, h=rip_height, $fn=3);
    translate([
-1/2*rip_length,
001,
000,
])
    scale([1,1,1])
    cube([rip_length,rip_length,rip_height+nothing]);

}
}
single_rip();
translate([1.732*rip_length,0,0])
single_rip();
translate([2*1.732*rip_length,0,0])
single_rip();
translate([3*1.732*rip_length,0,0])
single_rip();
            