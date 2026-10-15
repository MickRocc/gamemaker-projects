// objDisplayController - Create event
global.base_width  = 1920;
global.base_height = 1080;

// Keep GUI coordinates stable regardless of window size.
display_set_gui_size(global.base_width, global.base_height);

// Camera uses room/game coordinates.
camera_set_view_size(view_camera[0], global.base_width, global.base_height);


function resize_viewport() {
    // Get the current window dimensions.
    var _window_width  = window_get_width();
    var _window_height = window_get_height();

    // Calculate the scaling factor based on the window size and base dimensions.
    var _scale_x = _window_width / global.base_width;
    var _scale_y = _window_height / global.base_height;
    var _scale  = min(_scale_x, _scale_y);

    // Preserve the 16:9 aspect ratio.
    var _viewport_width  = floor(global.base_width * _scale);
    var _viewport_height = floor(global.base_height * _scale);

    // Center the viewport and create letterboxing when necessary.
    var _viewport_x = floor((_window_width - _viewport_width) * 0.5);
    var _viewport_y = floor((_window_height - _viewport_height) * 0.5);

    // Set the viewport position and size.
    view_set_xport(0, _viewport_x);
    view_set_yport(0, _viewport_y);
    view_set_wport(0, _viewport_width);
    view_set_hport(0, _viewport_height);
}

// Call the function to set the initial viewport size and position.
resize_viewport();

// Add an event listener to handle window resizing.
display_set_gui_size(1920, 1080);

