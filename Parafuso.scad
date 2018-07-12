module parafuso(diametro,altura,diametro_cabeca,altura_cabeca){
$fs=0.04; 
union(){
cylinder(h=altura,d=diametro);
translate([0,0,altura])cylinder(h=altura_cabeca,d2=diametro_cabeca,d1=diametro);
}
}