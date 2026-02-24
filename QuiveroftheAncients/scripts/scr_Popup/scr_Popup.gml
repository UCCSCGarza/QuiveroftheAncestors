// popup() function
function popup(important, seconds, myMessage){
	
	// Set the total lifetime of the popup to be however many seconds the caller wants it to be.
	var totalLifetime = seconds * game_get_speed(gamespeed_fps)
	
	// If this popup is important,
	if (important){
		
		// Pause all audio,
		audio_pause_all()
	
		// Play a special jingle,
		audio_play_sound(sfx_upgradeJingle, 0, 0)
	
		// Pause the game,
		global.paused = 1
	
		// And create a popup object in the HUD layer of the current room.
		var popupInstance = instance_create_layer(x, y, "HUD", obj_popup)
	
		// Use the message and lifetime given in the parameters for the instance of the object.
		popupInstance.myMessage = myMessage
		popupInstance.lifetime = totalLifetime

	
	}
	
	// Otherwise, if the popup isn't important,
	else{
	
		// Just create an instance of a popup, and use the parameters for that instance.
		var popupInstance = instance_create_layer(x, y, "HUD", obj_popup)
	
		popupInstance.myMessage = myMessage
		popupInstance.lifetime = totalLifetime
	}
}