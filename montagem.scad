use <Parafuso.scad>
use <Porca.scad>
use <Peça1.scad>
$fs=0.4;

/*Chaves*/

color([0.5,0.5,0.5,1]){
rotacao=7;
rotate([0,0,rotacao])translate([-4,0,0])import("ChaveAp.stl");
rotate([0,0,rotacao])translate([-6,0,2+1.7])import("ChaveExterna.stl");
translate([70,0,0])rotate([0,0,180+rotacao])translate([-4,0,4])import("Chave_vidro.stl");
translate([70,0,0])rotate([0,0,180+rotacao])translate([-4,0,0])import("ChaveAp.stl");
}
/*Fim das Chaves*/



/*Peça 1*/
color([0,0,0,1])translate([0,0,2+2+2])Peca1();
translate([0,0,-2])Peca2();