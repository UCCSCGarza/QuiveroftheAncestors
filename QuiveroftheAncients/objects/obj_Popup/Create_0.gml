// Indicate that the popup hasn't started writing yet.
writing = 0

// These are the default values; if something goes wrong, you'll see them.
myMessage = "This is an error message."
lifetime = 60

// For handling overlapping popups;
// If there's a popup instance, check for all instances.
// If there's any other instances (I.E. one with a different ID), destroy this one, and let the other one go.
if (instance_exists(obj_popup)){
	with (obj_popup){
		if (id != other.id){
		
			instance_destroy()
		
		}
	}
}