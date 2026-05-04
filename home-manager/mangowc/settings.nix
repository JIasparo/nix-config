{ config, ... }:

{
  config = {
    wayland.windowManager.mango.settings = {
      env = [
        "ELECTRON_OZONE_PLATFORM_HINT,auto"
        # WLR_DRM_NO_ATOMIC=1 mango # Needed on some graphics cards to allow tearing.
      ];

      exec-once = [
        "swaybg -i ${config.stylix.image}"
        "easyeffects --service-mode --hide-window"
      ];

      # Scroller layout
      scroller_structs = 20; # Width reserved on sides when window ratio is 1.0.
      scroller_default_proportion = 0.5; # Default width proportion for new windows.
      scroller_focus_center = 0; # Always center the focused window (0: disable, 1: enable).
      scroller_prefer_center = 0; # Center focused window only if it was outside the view (0: disable, 1: enable).
      scroller_prefer_overspread = 1; # Allow windows to overspread when there's extra space (0: disable, 1: enable).
      edge_scroller_pointer_focus = 0; # Focus windows even if partially off-screen (0: disable, 1: enable).
      scroller_proportion_preset = "0.2,0.5,0.8,1.0"; # Presets for cycling window widths.
      scroller_ignore_proportion_single = 1; # Ignore proportion adjustments for single windows (0: disable, 1: enable).
      scroller_default_proportion_single = 1.0; # Default proportion for single windows in scroller. Requires scroller_ignore_proportion_single=0 to take effect.

      # Overview settings
      enable_hotarea = 0; # Toggles overview when the cursor enters the configured corner (0: disable, 1: enable).
      hotarea_corner = 2; # Corner that triggers the hot area (0: top-left, 1: top-right, 2: bottom-left, 3: bottom-right).
      hotarea_size = 10; # Size of the hot area trigger zone in pixels.
      ov_tab_mode = 1; # Circles focus through windows in overview; releasing the mod key exits overview (0: disable, 1: enable).
      overviewgappi = 5; # Inner gap in overview mode.
      overviewgappo = 30; # Outer gap in overview mode.

      # Aesthetics

      # Theming
      borderpx = 2; # Border width in pixels.
      gappih = 3; # Horizontal inner gap (between windows).
      gappiv = 3; # Vertical inner gap.
      gappoh = 9; # Horizontal outer gap (between windows and screen edges).
      gappov = 9; # Vertical outer gap.

      cursor_size = config.stylix.cursor.size;
      cursor_theme = "${config.stylix.cursor.name}";

      # Blur
      blur = 1; # Enable blur for windows (0: disable, 1: enable).
      blur_layer = 0; # Enable blur for layer surfaces, e.g., bars and docks (0: disable, 1: enable).
      blur_optimized = 1; # Caches the wallpaper and blur background, significantly reducing GPU usage (0: disable, 1: enable).
      blur_params_radius = 5; # The strength (radius) of the blur.
      blur_params_num_passes = 3; # Number of passes. Higher = smoother but more expensive.
      blur_params_noise = 0.01; # Blur noise level.
      blur_params_brightness = 1.0; # Blur brightness adjustment.
      blur_params_contrast = 1.0; # Blur contrast adjustment.
      blur_params_saturation = 0.0; # Blur saturation adjustment.

      # Shadows
      shadows = 0; # Enable shadows (0: disable, 1: enable).

      # Opacity and corners
      border_radius = 0; # Window corner radius in pixels (0: disable, 1: enable).
      focused_opacity = 0.95; # Opacity for the active window (0.0 - 1.0).
      unfocused_opacity = 0.95; # Opacity for inactive windows (0.0 - 1.0).

      # Animations
      animations = 0; # Enable animations for windows (0: disable, 1: enable).
      layer_animations = 0; # Enable animations for layer surfaces, e.g., bars and docks (0: disable, 1: enable).

      # Input devices

      # Keyboard settings
      numlockon = 1; # Enable NumLock on startup (0: disable, 1: enable).

      # Mouse settings
      accel_profile = 0; # (0: None, 1: Flat, 2: Adaptive).
      accel_speed = 0.0; # Speed adjustment (-1.0 to 1.0).

      # Misc
      allow_tearing = 2; # Global tearing control (0: Disable, 1: Enable, 2: Fullscreen only).
      drag_tile_to_tile = 1; # Allow dragging a tiled window onto another to swap their positions (0: disable, 1: enable).
      focus_cross_monitor = 0; # Allow directional focus to cross monitor boundaries (0: disable, 1: enable).
      scratchpad_cross_monitor = 1; # Share the scratchpad pool across all monitors (0: disable, 1: enable).
    };
  };
}
