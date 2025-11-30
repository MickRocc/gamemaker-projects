/// @desc Camera Control and Scrolling Logic (with Boundary Check)

// 1. Check for Scrolling Trigger
if (!is_scrolling)
{
    var buffer = 16;
    var new_room_x = current_room_x;
    var new_room_y = current_room_y;
    
    // --- Determine Potential New Room Position ---
    
    // Check RIGHT boundary
    if (target.x > x + global.roomSize_width - buffer)
    {
        new_room_x += 1;
    }
    // Check LEFT boundary
    else if (target.x < x + buffer)
    {
        new_room_x -= 1;
    }
    // Check DOWN boundary
    else if (target.y > y + global.roomSize_height - buffer)
    {
        new_room_y += 1;
    }
    // Check UP boundary
    else if (target.y < y + buffer)
    {
        new_room_y -= 1;
    }

    // 🚨 NEW: APPLY BOUNDARY CLAMPING
    // Use clamp() to ensure the new room indices are within the valid range
    // (0 up to the maximum index calculated in the Create Event).
    
    new_room_x = clamp(new_room_x, 0, max_room_index_x);
    new_room_y = clamp(new_room_y, 0, max_room_index_y);


    // 2. Check if the Room *Actually* Changed
    // This check is now robust, as it only triggers a scroll if the 
    // new, clamped position is different from the current one.
    if (new_room_x != current_room_x || new_room_y != current_room_y)
    {
        // 🚨 START SCROLLING 
        current_room_x = new_room_x;
        current_room_y = new_room_y;
        
        target_x = current_room_x * global.roomSize_width;
        target_y = current_room_y * global.roomSize_height;
        
        is_scrolling = true;
        
        // OPTIONAL: Snap the player back toward the edge of the new screen
        // (Existing snap logic can remain here)
        if (target_x > x) 
            target.x = target_x + buffer;
        else if (target_x < x) 
            target.x = target_x + global.roomSize_width - buffer;
        else if (target_y > y) 
            target.y = target_y + buffer;
        else if (target_y < y) 
            target.y = target_y + global.roomSize_height - buffer;
    }
    // 🚨 CRUCIAL: If the boundary was hit, move the player back *into* the current screen
    else
    {
        // This stops the player from trying to push past the boundary indefinitely
        target.x = clamp(target.x, x + buffer, x + global.roomSize_width - buffer);
        target.y = clamp(target.y, y + buffer, y + global.roomSize_height - buffer);
    }
}

// 3. Perform the Scroll (Smooth Movement)
if (is_scrolling)
{
    // ... (Existing smooth scrolling logic here)
    x = lerp(x, target_x, scroll_speed / 25);
    y = lerp(y, target_y, scroll_speed / 25);

    // Check if arrived
    if (abs(x - target_x) < 1 && abs(y - target_y) < 1)
    {
        x = target_x;
        y = target_y;
        is_scrolling = false;
    }
}

// 4. Update the Actual View/Camera
camera_set_view_pos(view_camera[0], round(x), round(y));