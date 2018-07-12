use <Parafuso.scad>
use <Porca.scad>

module Shape(){
$fs=0.04; 
translate([0,0,1.7/2-.01])minkowski(){
linear_extrude(height=.01){

hull(){
translate([27/2-6,0,0])circle(d=27-1.7);
translate([70+6-27/2,0,0])circle(d=27-1.7);
}
}
sphere(d=1.7);
}
}
module Clip2d(){
    $fs=0.04; 
    difference(){ 
        union(){
            translate([0,2,0])circle(d=4);
            square([4,4/2]);
            polygon(points=[[0,0],[0,4],[-45,0.4+.5],[-50,1.4+.2],[-50,0]]);
        }
        translate([0,2,0])circle(d=3.99);
        translate([4,2,0])circle(d=3.99);
        polygon(points=[[0,0],[0,3.99],[-45,0.399+.5],[-50,1.38+.2],[-50,0]]);
    }    
}

module Clip(){
     $fs=0.04; 
minkowski(){
    translate([10,-15/2,1.7-.5])rotate([90,0,180])linear_extrude(height=15)Clip2d();
     sphere(d=1);
}
}

module Peca1(){
difference(){
    union(){
        Shape();
        Clip();
    }
    translate([0,0,-25+1.7])parafuso(3.5,25-1.7,6,1.7);
    translate([70,0,-25+1.7])parafuso(3.5,25-1.7,6,1.7);

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