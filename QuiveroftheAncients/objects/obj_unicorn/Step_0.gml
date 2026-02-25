/// @description Allow the player to speak to the unicorn
if (place_meeting(x, y, obj_player)) {
    prompt_active = true;
    
    // Trigger Dialogue Pressing E
    if (keyboard_check_pressed(ord("E"))) {
      
        if (!instance_exists(obj_uni_conversation)) {
			// Create the conversation 
            var _inst = instance_create_layer(x, y, "Instances", obj_uni_conversation);
            
            // Tell the conversation which lines to play 
            with(_inst) {
                scr_uni_conversation(0, 6); 
            }
        }
    }
} else {
    prompt_active = false;
}
