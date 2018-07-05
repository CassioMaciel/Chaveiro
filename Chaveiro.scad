use <Parafuso.scad>
use <Porca.scad>
$fs=0.4;
espessura=5+4; /*espessura das chaves*/
text=25;
tint=15;
chave_maior=72.5;
difference(){
union(){
translate([0,0,25/2])cube([text,35,chave_maior-25/2]);
translate([0,35/2,25/2])rotate([0,90,0])cylinder(d=35,h=text);
translate([-5,0,25/2])cube([5,35,chave_maior-25/2]);
translate([-5,35/2,25/2])rotate([0,90,0])cylinder(d=35,h=5);   
translate([text/2,0,chave_maior])rotate([-90,0,0]){
    difference(){
    translate([-2.5,0,0])cylinder(d=text+5,h=35);
    cylinder(d=tint,h=35);
    }
}
}
difference(){
    translate([(text-tint)/2,0,-15])cube([tint,40,chave_maior+15]);
    translate([text-5-1,35/2,25/2])rotate([0,90,0])cylinder(d2=35,d1=25,h=1);
    translate([5,35/2,25/2])rotate([0,90,0])cylinder(d1=35,d2=25,h=1);
}

union(){
translate([0,38,0])rotate([90,0,0])linear_extrude(height = 40)polygon(points=[[-5+.3,-5],[0,-5],[0,25/2],[-.3,25/2]]);

difference(){
translate([text/2-2.5,-5,chave_maior])rotate([-90,0,0])cylinder(d=text,h=45);
    translate([0,-20,])cube([50,70,100]);
}

#translate([0,36,0])rotate([90,0,0])linear_extrude(height = 40)polygon(
        points=[[-.3,25/2],[0,25/2],[0,72.5],[-2.5,72.5]]
    );
}
translate([0,35,0])rotate([90,0,0])linear_extrude(height = 40)polygon(
        points=[[-5,72.5],[-2.5,25/2],[-5,-5],[-25,-5]]
    );

translate([text,35/2,25/2])rotate([0,-90,0]){
parafuso(3.5,text-3,6,50);
translate([0,0,-1])porca(5.5,2.6-1);
}
}

/*
difference(){
translate([text/2-2.5,0,chave_maior])rotate([-90,0,0])cylinder(d=text,h=35);
    cube([500,500,500]);
}
*/