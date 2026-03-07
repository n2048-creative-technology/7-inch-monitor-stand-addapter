
translate([0,50]) 
bottom();

translate([0,-50]) 
union(){
    top();
    plate1();
}


module bottom(){
linear_extrude(80) difference(){
offset(1.5)circle(d=30);
circle(d=30);
}

difference(){
linear_extrude(80,scale=0.9) difference(){
    for(i=[0:60:360]) rotate(i) square([1.5,45],center=true);
}
linear_extrude(100)circle(d=30);
}

linear_extrude(1.5) circle(d=45);

}


module top(){
    difference(){
        cylinder(d=33,h=75+3);
        translate([0,0,-0.01])cylinder(d1=26,d2=22,h=75);
        cylinder(d=5,h=200,center=true);
        
        hull(){
        translate([0,0,16]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        rotate([90,0])cylinder(d=6.5,h=28,center=true);
        }
    }
}



module plate1(){
    translate([16,0,40])rotate([90,0,90])linear_extrude(4)
    difference(){
        offset(2) offset(-2) square([80,70],center=true);
        translate([66/2,54/2]) circle(d=3.5);
        translate([66/2,-54/2]) circle(d=3.5);
        translate([-66/2,54/2]) circle(d=3.5);
        translate([-66/2,-54/2]) circle(d=3.5);
    }
    
    difference(){
    intersection(){
    hull(){
        cylinder(d=33,h=78);
        linear_extrude(78)
        translate([16,0,40]) square([3,50],center=true);
    }
    translate([0,0,8]) for(i=[0:20:70]) translate([0,0,i]) linear_extrude(3) square(100,center=true);
        
    }
    translate([0,0,-0.01])cylinder(d1=26,d2=22,h=75);
        cylinder(d=5,h=200,center=true);
        
        hull(){
        translate([0,0,16]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        rotate([90,0])cylinder(d=6.5,h=28,center=true);
        }
    }
}