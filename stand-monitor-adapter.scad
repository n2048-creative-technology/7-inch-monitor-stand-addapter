$fn=360;

translate([0,50]) 
bottom();

translate([0,-50]) 
union(){
    top();
    plate1();
}

!translate([0,-150]) 
union(){
    top();
    plate2();
}


module bottom(){
linear_extrude(80) difference(){
offset(1.5)circle(d=30.5);
circle(d=30.5);
}

difference(){
linear_extrude(80,scale=0.9) difference(){
    for(i=[0:60:360]) rotate(i) square([1.5,45],center=true);
}
linear_extrude(100)circle(d=30.5);
}

linear_extrude(1.5) circle(d=45);

}


module top(){
    difference(){
        cylinder(d=33,h=75+3);
        translate([0,0,-0.01])cylinder(d1=27,d2=23,h=75);
        cylinder(d=5,h=200,center=true);
        
hull(){
        translate([0,0,16]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        translate([0,0,12]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        }
                hull(){
        translate([0,0,10]) rotate([90,0])cylinder(d=6.5,h=26,center=true);

        rotate([90,0])cylinder(d=6.5,h=30,center=true);
        }
    }
}



module plate1(){
    translate([16,0,40])rotate([90,0,90])linear_extrude(4)
    difference(){
        offset(2) offset(-2) square([80,70],center=true);
        translate([66/2,54/2]) circle(d=4.5);
        translate([66/2,-54/2]) circle(d=4.5);
        translate([-66/2,54/2]) circle(d=4.5);
        translate([-66/2,-54/2]) circle(d=4.5);
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
    translate([0,0,-0.01])cylinder(d1=27,d2=23,h=75);
        cylinder(d=5,h=200,center=true);
        
       hull(){
        translate([0,0,16]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        translate([0,0,12]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        }
                hull(){
        translate([0,0,10]) rotate([90,0])cylinder(d=6.5,h=26,center=true);

        rotate([90,0])cylinder(d=6.5,h=30,center=true);
        }
    }
}



module plate2(){
    translate([16,10,40])rotate([90,0,90])linear_extrude(4)
    rotate(90) difference(){
        offset(2) offset(-2) square([80,70],center=true);
        translate([66/2,54/2]) circle(d=4.5);
        translate([66/2,-54/2]) circle(d=4.5);
        translate([-66/2,54/2]) circle(d=4.5);
        translate([-66/2,-54/2]) circle(d=4.5);
    }
    
    difference(){
    intersection(){
    hull(){
        cylinder(d=34,h=78);
        linear_extrude(78)
        translate([16,0,40]) square([3,50],center=true);
    }
    translate([0,0,20]) for(i=[0:20:60]) translate([0,0,i]) linear_extrude(3) square(100,center=true);
        
    }
    translate([0,0,-0.01])cylinder(d1=27,d2=23,h=75);
        cylinder(d=5,h=200,center=true);
        
       hull(){
        translate([0,0,16]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        translate([0,0,12]) rotate([90,0])cylinder(d=6.5,h=34,center=true);
        }
                hull(){
        translate([0,0,10]) rotate([90,0])cylinder(d=6.5,h=26,center=true);

        rotate([90,0])cylinder(d=6.5,h=30,center=true);
        }
    }
}