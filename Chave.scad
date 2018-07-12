/*https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Parts_of_a_Yale_lock-type_key.svg/676px-Parts_of_a_Yale_lock-type_key.svg.png
*/
/* height width length  */

bow_diameter=25.5;
ring_hole_diameter=4;
ring_hole_place=4;
Shoulder_width=9.4;
Length=51.4;


linear_extrude(height = 2.2){
difference(){
union(){
translate([bow_diameter/2,0,0])circle(d=bow_diameter);

translate([0,-Shoulder_width/2,0])square([Length,Shoulder_width],center=false);
}
translate([ring_hole_place,0,0])circle(d=ring_hole_diameter);
}
}