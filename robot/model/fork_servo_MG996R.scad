// Philippe LECA - 2015-04-26
// http://www.astrokraken.fr
// leca.philippe@neuf.fr

$fn=40;
dpetit=3;
dgros=8.5;
pospetit=7; // position (rayon) des petits trous périphériques par rapport à l'axe du trou central

raidis=4; // hauteur des raidisseurs
epais=2; // épaisseurs
larg=52+2*(raidis+epais); // largeur totale = cote entre fourches + épaisseurs + hauteur des raidisseurs
haut=11+21+raidis+epais; // hauteur totale
prof=22+2*epais; // profondeur totale
difference(){
	union(){
		translate([-prof/2,-larg/2,0])cube([prof,larg,haut-(prof/2)+epais]);
		translate ([0,larg/2,haut-11]) rotate([90,0,0]) cylinder(h=larg,d=prof);
	}
	// fourche
	translate([-1-prof/2,-(larg-2*(raidis+epais))/2,raidis+epais]) cube([prof+2,(larg-2*(raidis+epais)),haut-raidis+1]);

	// raidisseurs fond
	translate([-(prof-2*epais)/2,-(larg-2*(raidis+epais))/2,epais]) cube([prof-2*epais,(larg-2*(raidis+epais)),raidis+1]);
	// raidisseurs latéraux 
	translate([-(prof-2*epais)/2,-1-larg/2,epais]) cube([prof-2*epais,raidis+1,haut+1]);
	translate([-(prof-2*epais)/2,(larg-2*raidis)/2,epais]) cube([prof-2*epais,raidis+1,haut+1]);


	// trous vis fixation base
	translate ([0,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([0,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([pospetit,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([pospetit,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,-10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,10.5,-1]) cylinder(h=5,d=dpetit);
	translate ([0,-10.6+pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([0,10.5+pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([0,-10.5-pospetit,-1]) cylinder(h=5,d=dpetit);
	translate ([0,10.5-pospetit,-1]) cylinder(h=5,d=dpetit);

	// trous côté gauche
	translate ([0,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([0,1-(larg-2*(epais+raidis))/2,haut-11-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([0,1-(larg-2*(epais+raidis))/2,haut-11+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,1-(larg-2*(epais+raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);

	// trous côté droit
	translate ([0,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([0,1+(larg-2*(raidis))/2,haut-11-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([0,1+(larg-2*(raidis))/2,haut-11+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,1+(larg-2*(raidis))/2,haut-11]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
}
