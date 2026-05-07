{ ... }:

{
  config = {
    programs.kitty.settings = {
      # Scrollback
      scrollbar = "always"; # Control when the scrollbar is displayed ("scrolled": Shows when scrolling backwards has started, "hovered": Shows when the mouse is hovering on the right edge of the window, "scrolled-and-hovered": Shows when the mouse is over the scrollbar region and scrolling backwards has started, "always": Shows whenever any scrollback is present, "never": Disable the scrollbar).
      scrollbar_interactive = true; # Whether scrollbar is controllable via the mouse.
      scrollbar_jump_on_click = true; # Whether clicking in the scrollbar track will cause the scroll position to jump to the clicked location.
      scrollbar_width = 0.5; # The width of the scroll bar in units of cell width.
      scrollbar_hover_width = 1.5; # The width of the scroll bar when the mouse is hovering over it, in units of cell width.
      scrollbar_handle_opacity = 0.1; # The opacity of the scrollbar handle (0: Fully transparent, 1: Fully opaque).
      scrollbar_radius = 0.1; # The radius of the scrollbar handle in units of cell width. Value should be less than `scrollbar_width`.
      scrollbar_gap = 0.0; # The gap between the scrollbar and the window edge in units of cell width.
      scrollbar_min_handle_height = 1.0; # The minimum height of the scrollbar handle in units of cell height.
      scrollbar_hitbox_expansion = 0.5; # The extra area around the handle to allow easier grabbing of the scrollbar in units of cell width.
      scrollbar_track_opacity = 0.0; # The opacity of the scrollbar track (0: Fully transparent, 1: Fully opaque).
      scrollbar_track_hover_opacity = 0.0; # The opacity of the scrollbar track when the mouse is over the scrollbar (0: Fully transparent, 1: Fully opaque).

      # Window layout
      confirm_os_window_close = 0; # Ask for confirmation when closing an OS window or a tab with at least this number of kitty windows in it by window manager or by the `close_tab` action. (0: Disables confirmation, x: Required number of kitty windows for the confirmation to show, -x: Similar to positive x, but only counts windows where some command is currently running)

      # Terminal bell
      enable_audio_bell = false; # Whether the audio bell plays.
    };
  };
}
