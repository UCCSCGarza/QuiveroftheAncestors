function scr_uni_conversation(_start, _end) {
    
    // Create the dialogue object once
    dialogue = new Dialogue();
    
    // Loop from the start ID to the end ID
    for (var i = _start; i <= _end; i++) 
    {
        // Call your existing logic for each ID
        scr_uni_dialogue_add_line(dialogue, i);
    }
    
    return dialogue;
}

//  Unicorn Conversation with player 
function scr_uni_dialogue_add_line(_diag, _id) {

	switch (_id)
    {
        case 0:
            _diag.add(spr_Player, "Holy Sh*t, it’s a Unicorn in a Kimono! ");
        break;


 
    case 1:
        _diag.add(spr_Player,
        "Hehehe, I got the kimono... ");
    break;

    case 2:
        _diag.add(spr_Unicorn,
        "Look into my eyes...\n,Feel the shimmer of my ma...,\nfor I am the Unicorn!!!");
    break;

    case 3:
        _diag.add(spr_Player,
        "Sup, Uni,\n I’m digging the Temu kimono ;)");
    break;


    // TRUTH PATH RESPONSES
    case 4:
        _diag.add(spr_Unicorn,
        "Oh? You noticed?\nIt flows beautifully in the moonlight…\nAlmost as beautifully as you.");
    break;

    case 5:
        _diag.add(spr_Player,
        "Careful.\n Keep talking like that and I might stay awhile.");
    break;

    case 6:
        _diag.add(spr_Unicorn,
        "Step closer then. \nLet the magic pull you in.");

    break;

    }
}