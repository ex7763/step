// Philippe LECA - 2015-04-26
// http://www.astrokraken.fr
// leca.philippe@neuf.fr

$fn=40;
angle=45;
dpetit=3;
dgros=8.5;
pospetit=7; // position (rayon) des petits trous périphériques par rapport à l'axe du trou central

raidis=4; // hauteur des raidisseurs
epais=2; // épaisseurs
larg=52+2*(raidis+epais); // largeur totale = cote entre fourches + épaisseurs + hauteur des raidisseurs
haut=11+21+raidis+epais; // hauteur totale
prof=22+2*epais; // profondeur totale

union(){
difference(){
rotate([0,-angle,0]){
difference(){
	union(){
		translate([0,-larg/2,0])cube([prof,larg,haut-(prof/2)+epais]);
		difference(){
			translate ([0,larg/2,0]) rotate([90,0,0]) cylinder(h=larg,d=prof*2);
			translate ([0,larg/2-raidis-epais,0]) rotate([90,0,0]) cylinder(h=larg-2*epais-2*raidis,d=prof*2-2*epais);
			translate ([0,larg/2+1,0]) rotate([90,0,0]) cylinder(h=raidis+1,d=prof*2-2*epais);
			translate ([0,-larg/2+raidis,0]) rotate([90,0,0]) cylinder(h=larg-2*epais-2*raidis,d=prof*2-2*epais);
			translate ([-prof-1,-larg/2-1,0]) cube([prof*2+2,larg+2,prof*2+2]);
		}
		translate ([prof/2,larg/2,haut-11]) rotate([90,0,0]) cylinder(h=larg,d=prof);
	}
	// fourche
	translate([-1,-(larg-2*(raidis+epais))/2,0]) cube([prof+2,(larg-2*(raidis+epais)),haut+epais+1]);

	// raidisseurs fond
	translate([epais,-(larg-2*(raidis+epais))/2,epais]) cube([prof-2*epais,(larg-2*(raidis+epais)),raidis+1]);
	// raidisseurs latéraux 
	translate([epais,-1-larg/2,0]) cube([prof-2*epais,raidis+1,haut+epais+1]);
	translate([epais,(larg-2*raidis)/2,0]) cube([prof-2*epais,raidis+1,haut+epais+1]);


	// trous côté gauche
	translate ([prof/2,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([prof/2,1-(larg-2*(epais+raidis))/2,haut-11-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([prof/2,1-(larg-2*(epais+raidis))/2,haut-11+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit+prof/2,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit+prof/2,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);

	// trous côté droit
	translate ([prof/2,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([prof/2,1+(larg-2*(raidis))/2,haut-11-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([prof/2,1+(larg-2*(raidis))/2,haut-11+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit+prof/2,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit+prof/2,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
}
}
translate([-prof-1,-larg/2-1,-prof-1]) cube([2*prof+2,larg+2,prof+1]);
translate ([pospetit+prof/2,-10.5,epais+1]) cylinder(h=prof,d=4);
translate ([pospetit+prof/2,10.5,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,-10.6+pospetit,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,10.5+pospetit,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,-10.5-pospetit,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,10.5-pospetit,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,-10.5,epais+1]) cylinder(h=prof,d=4);
translate ([prof/2,10.5,epais+1]) cylinder(h=prof,d=4);
}
difference(){
	union(){
		translate([0,-larg/2+epais+raidis,epais]) cube([epais,larg-2*epais-2*raidis,raidis]);
		translate([0,-larg/2,0]) cube([prof,larg,epais]);
	}
	// trous vis fixation base
	translate ([prof/2,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([prof/2,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([pospetit+prof/2,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([pospetit+prof/2,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([-pospetit+prof/2,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([-pospetit+prof/2,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([prof/2,-10.6+pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([prof/2,10.5+pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([prof/2,-10.5-pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([prof/2,10.5-pospetit,-1]) cylinder(h=5,d=dpetit);
}
}
