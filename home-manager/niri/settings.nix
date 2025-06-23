{ config, ... }:

{
  config = {
    programs.niri.settings = {
      clipboard.disable-primary = true; # Disable primary selection clipboard (middle mouse paste)
      prefer-no-csd = false; # Prefer server-side decorations (SSD) over client-side decorations (CSD)
      screenshot-path = "";

      environment = {
        #
      };

      spawn-at-startup = [
        { command = [ "swaybg -i ${config.stylix.image}" ]; }
      ];

      input = {
        power-key-handling.enable = true;

        keyboard = {
          numlock = true;
        };

        mouse = {
          #accel-profile = "flat";
          #accel-speed = 0;
          left-handed = false;
        };

        touchpad = {
          #accel-profile = "flat";
          #accel-speed = 0;
          disabled-on-external-mouse = false;
          dwt = false; # Disables touchpad while typing
          dwtp = false; # Disables touchpad while using trackpoint
          natural-scroll = true;
          #scroll-method = "two-finger"; # Type: null, "no-scroll", "two-finger", "edge", "on-button-down"
          tap = true; # Enable tap-to-click
        };
      };

      cursor = {
        size = config.stylix.cursor.size;
        theme = "${config.stylix.cursor.name}";
      };

      layout = {
        border = {
          enable = true;
          width = 2;
          #active.color = "";
          #inactive.color = "";
          #urgent.color = "";
        };

        focus-ring = {
          enable = true;
          width = 4;
          #active.color = "";
          #inactive.color = "";
          #urgent.color = "";
        };

        shadow = {
          enable = true;
          #color = "";
          #inactive-color = "";
          draw-behind-window = true;
          softness = 30.0;
          spread = 5.0;

          offset = {
            x = 0.0;
            y = 0.0;
          };
        };

        insert-hint = {
          enable = true;
          #display.color = "";
        };

        preset-column-widths = [
          { proportion = 0.25; }
          { proportion = 0.5; }
          { proportion = 0.75; }
          { proportion = 1.0; }
        ];

        preset-window-heights = [
          { proportion = 0.25; }
          { proportion = 0.5; }
          { proportion = 0.75; }
          { proportion = 1.0; }
        ];

        center-focused-column = "never"; # Type: "never", "always", "on-overflow"
        default-column-display = "normal"; # Type: "normal", "tabbed"
        default-column-width = { proportion = 0.5; };

        tab-indicator = {
          enable = true;
          corner-radius = 0.0;
          gap = 5.0;
          gaps-between-tabs = 0.0;
          length.total-proportion = 0.5;
          place-within-column = true;
          hide-when-single-tab = true;
          position = "left"; # Type: "left", "right", "top", "bottom"
          width = 4.0;
        };

        gaps = 6;

        struts = {
          bottom = 0;
          left = 0;
          right = 0;
          top = 0;
        };
      };

      animations = {
        enable = true;
      };

      gestures = {
        hot-corners.enable = true;
      };
    };
  };
}
