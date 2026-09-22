// objDisplayController - Create event

global.baseWidth  = 1920;
global.baseHeight = 1080;

// Keep GUI coordinates stable regardless of window size.
display_set_gui_size(global.baseWidth, global.baseHeight);

// Camera uses room/game coordinates.
camera_set_view_size(view_camera[0], global.baseWidth, global.baseHeight);

function resizeViewport() {
    var windowWidth  = window_get_width();
    var windowHeight = window_get_height();

    var scaleX = windowWidth / global.baseWidth;
    var scaleY = windowHeight / global.baseHeight;
    var scale  = min(scaleX, scaleY);

    // Preserve the 16:9 aspect ratio.
    var viewportWidth  = floor(global.baseWidth * scale);
    var viewportHeight = floor(global.baseHeight * scale);

    // Center the viewport and create letterboxing when necessary.
    var viewportX = floor((windowWidth - viewportWidth) * 0.5);
    var viewportY = floor((windowHeight - viewportHeight) * 0.5);

    view_set_xport(0, viewportX);
    view_set_yport(0, viewportY);
    view_set_wport(0, viewportWidth);
    view_set_hport(0, viewportHeight);
}

resizeViewport();
display_set_gui_size(1920, 1080);