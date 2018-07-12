use <Parafuso.scad>
use <Porca.scad>
module Peca1(){
$fs=0.04; 
difference(){
{linear_extrude(height=1.7){hull(){
translate([27/2-6,0,0])circle(d=27);
translate([70+6-27/2,0,0])circle(d=27);
}
}
}
translate([0,0,-25+1.7])parafuso(3.5,25-1.7,6,1.7);
translate([70,0,-25+1.7])parafuso(3.5,25-1.7,6,1.7);
}


minkowski(){
translate([60,+15/2,1.7])rotate([90,0,0])linear_extrude(height=15){
union(){
translate([4,0,0])difference(){
translate([0,1.5,0])circle(d=4.01);
translate([0,1.5,0])circle(d=3.99);
translate([0,-1,0])square([5,5]);
translate([-2.5,1.5,0])square([5,5]);
}
difference(){
translate([0,1.5,0])circle(d=4.01);
translate([0,1.5,0])circle(d=3.99);
translate([-5,-1,0])square([5,5]);
}
difference(){
polygon(points=[[0,0],[0,3.51],[-45,0.4+.51]]);
polygon(points=[[0,0],[0,3.49],[-45,0.4+0.49]]);
}
polygon(points=[[-45-.01,0.4+.51],[-45-.01,0.4+0.49],[-50,.4+.49+.7]]);
}
}
sphere(d=1);
}



}


module Peca2(){
$fs=0.04; 
difference(){
union(){
    color([0,0,0,1])linear_extrude(height=2){
        hull(){
            translate([27/2-6,0,0])circle(d=27);
            translate([70+6-27/2,0,0])circle(d=27);
        }
    }
    
    
    color([0.9,0.5,0,1])translate([0,0,-1.4])cylinder(h=1.4,d2=12,d1=1.155*5.5+.4);
    color([.9,0.5,0,1])translate([70,0,-1.4])cylinder(h=1.4,d2=12,d1=1.155*5.5+.4);

translate([0,0,-1.4])color([.9,0.5,0,1])linear_extrude(height=1.4){
    translate([70/2,0,0])rotate([180,0,0])text("127.0.0.1", size = 10, font = "Liberation Sans", halign = "center", valign = "center");
    difference(){
       hull(){
            translate([27/2-6,0,0])circle(d=27);
            translate([70+6-27/2,0,0])circle(d=27);
        }
      hull(){
            translate([27/2-6,0,0])circle(d=21.5);
            translate([70+6-27/2,0,0])circle(d=21.5);
        }

    }





}




}


translate([0,0,-1.4]){
color([0,0,0,1])porca(5.5,2.4);
cylinder(h=10,d=3.5);

translate([70,0,0]){color([0,0,0,1])porca(5.5,2.4);
cylinder(h=10,d=3.5);
}
}
}
}