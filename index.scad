// $fn = number of facets in the object, influence all objects inside the module
module Logo(size=50, $fn=100) {
        // Temporary variables
        hole = size/2;
        cylinderHeight = size * 1.25;
        
        // One positive sphere and three negative cylinders
        difference() {
                sphere(d=size);

                cylinder(d=hole, h=cylinderHeight, center=true);

                // The '#' operator highlights the object
                #rotate([90, 0, 0]) cylinder(d=hole, h=cylinderHeight, center=true);
                rotate([0, 90, 0]) cylinder(d=hole, h=cylinderHeight, center=true);
        } 
}
