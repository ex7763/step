// Philippe LECA - 2015-04-26
// http://www.astrokraken.fr
// leca.philippe@neuf.fr

$fn=40;
dservo=4.25;
dpetit=3;
dgros=8.5;
hlog=3.25;
pospetit=7;
difference(){
	union(){
		translate([-10,-28,1])cube([24,56,32]);
		translate([12,-20.5,33])cube([2,41,5]);
	}
	translate([-11,-20.5,3])cube([23,41,33]);
	translate([-11,-26,3])cube([23,52,21]);
	// logements écrous
	translate([-8.75,-31.3,27])cube([7.5,10,hlog]);
	translate([1.25,-31.3,27])cube([7.5,10,hlog]);
	translate([-8.75,21.3,27])cube([7.5,10,hlog]);
	translate([1.25,21.3,27])cube([7.5,10,hlog]);
	// trous vis fixation servo
	translate ([-5,-24.25,23]) cylinder(h=12,d=dservo);
	translate ([5,-24.25,23]) cylinder(h=12,d=dservo);
	translate ([-5,24.25,23]) cylinder(h=12,d=dservo);
	translate ([5,24.25,23]) cylinder(h=12,d=dservo);
	// trous vis fixation roulements
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
	// trous vis fixation petits côtés
	translate ([0,-25,13.5]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([0,-25,13.5-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([0,-25,13.5+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit,-25,13.5]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,-25,13.5]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([0,30,13.5]) rotate([90,0,0]) cylinder(h=5,d=dgros);
	translate ([0,30,13.5-pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([0,30,13.5+pospetit]) rotate([90,0,0]) cylinder(h=5,d=dpetit);	
	translate ([pospetit,30,13.5]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	translate ([-pospetit,30,13.5]) rotate([90,0,0]) cylinder(h=5,d=dpetit);
	// trous vis fixation grand côté
	translate ([11,-10.5,25]) rotate([0,90,0]) cylinder(h=5,d=dgros);
	translate ([11,10.5,25]) rotate([0,90,0]) cylinder(h=5,d=dgros);
	translate ([11,-10.5-pospetit,25]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,10.5-pospetit,25]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,-10.5+pospetit,25]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,10.5+pospetit,25]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,-10.5,25+pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,10.5,25+pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,-10.5,25-pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,10.5,25-pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,0,13.5]) rotate([0,90,0]) cylinder(h=5,d=dgros);
	translate ([11,-pospetit,13.5]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,pospetit,13.5]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,0,13.5+pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
	translate ([11,0,13.5-pospetit]) rotate([0,90,0]) cylinder(h=5,d=dpetit);
}
