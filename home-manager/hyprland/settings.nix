{ ... }:

{
  config = {
    wayland.windowManager.hyprland.settings = {
      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
      ];

      #exec-once = [];

      general = {
        gaps_in = "3";
        gaps_out = "9";
        border_size = "2";

        # Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false;
        resize_on_border = false;

        layout = "dwindle";
      };

      dwindle = {
        pseudotile = true;
        preserve_split = false;
      };

      decoration = {
        rounding = 10;
        rounding_power = 3.0;

        blur = {
          enabled = true;
          brightness = 1.0;
          contrast = 1.0;
          noise = 0.01;

          size = 5;
          passes = 3;
        };

        shadow = {
          enabled = true;
          offset = "0 15";
          range = 4;
          render_power = 2;
          scale = 1.0;
        };
      };

      animations = {
        enabled = true;
        
        animation = [
          "border, 1, 2, default"
          "fade, 1, 4, default"
          "windows, 1, 3, default, popin 80%"
          "workspaces, 1, 2, default, slide"
        ];
      };

      input = {
        kb_layout = "us";
        follow_mouse = "1";
        sensitivity = "0"; # -1.0 - 1.0, 0 means no modification.
        numlock_by_default = true;

        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe = false;
      };

      misc = {
        disable_autoreload = true;
        middle_click_paste = false;
        vrr = 2; # Only enabled for fullscreen i.e. games.
      };

      render = {
        direct_scanout = 2; # 0 - off, 1 - on, 2 - on for games
      };
    };
  };
}
