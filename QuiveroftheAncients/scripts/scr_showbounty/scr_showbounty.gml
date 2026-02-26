function scr_showbounty(_id){

// Creating structs to access using key, value pairs
var _bounties = {


		"Boogie Man" : {
		    title: "Wanted",
		    portrait: spr_BoogieWanted,
		    name: "Boogie Man",
		    crime: "Crimes against Humanity",
		    reward_icon: spr_UnicornHorn
		},
		
		
		
		"Big Foot" : {
			title: "Wanted",
		    portrait:  spr_BigfootWanted,
		    name: "Big Foot",
		    crime: "Eating everyone's food and laughing about it",
		    reward_icon: spr_UnicornHorn
		}
	}
	
	
	// Need to create a dynamic lookup to allow selecting the correct bounty
	// For now
	var _result = _bounties[$ _id];
	
	return _result;
}