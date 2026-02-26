function Dialogue() constructor {
	
	_dialogue = [];
	
	add = function(_sprite, _message) {
		array_push(_dialogue, {
			sprite: _sprite,
			message: _message,
			
		});
	}
	
	pop = function() {
		var _t = array_first(_dialogue) ;
		array_delete(_dialogue, 0, 1);
		
		return _t;
	}
		
		count = function() {
			return array_length(_dialogue);
		}
	

}