if (!showing_dialogue)
{
    if (dialogue.count() > 0)
    {
        current_dialogue = dialogue.pop();
        showing_dialogue = true;
    }
    else
    {
        // No dialogue left 
        if (active)
        {
            stage = 1; 
        }
        else
        {
            instance_destroy();
        }
    }
}
else
{
    if (keyboard_check_released(key_next))
    {
        showing_dialogue = false;
        alpha = 0;
    }
}

if (active)
{
    // If not currently showing dialogue text
    if (!showing_dialogue)
    {

        if (dialogue.count() <= 0)
        {
            stage = 1;
        }
    }
}

    
