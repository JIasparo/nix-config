{ config, ... }:

{
  config = {
    programs.niri.settings = {
      environment = {
        "NIXOS_OZONE_WL" = "1";
      };

      spawn-at-startup = [
        { argv = [ "swaybg" "-i" "${config.stylix.image}" ]; }
      ];

      cursor = {
        size = config.stylix.cursor.size;
        theme = "${config.stylix.cursor.name}";
      };

      gestures = {
        hot-corners.enable = false;
      };

      hotkey-overlay = {
        skip-at-startup = true;
        hide-not-bound = false;
      };

      screenshot-path = "~/Pictures/Screenshots/niri-$(date '+%Y%m%d-%H:%M:%S').png";
      clipboard.disable-primary = true; # Disable primary selection clipboard (middle mouse paste)
      prefer-no-csd = true; # Prefer server-side decorations (SSD) over client-side decorations (CSD)

      layout = {
        border = {
          enable = true;
          width = 2;
        };

        focus-ring.enable = false;

        shadow.enable = false;

        insert-hint = {
          enable = true;
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

        always-center-single-column = false;
        center-focused-column = "never"; # Type: "never", "always", "on-overflow"
        default-column-display = "normal"; # Type: "normal", "tabbed"
        default-column-width = {
          proportion = 0.5;
        };

        tab-indicator = {
          enable = true;
          hide-when-single-tab = true;
          place-within-column = true;
          position = "left"; # Type: "left", "right", "top", "bottom"

          length.total-proportion = 1.0;
          corner-radius = 0.0;
          gap = 2.5;
          gaps-between-tabs = 2.5;
          width = 2.0;
        };

        gaps = 3;

        struts = {
          bottom = 6;
          left = 6;
          right = 6;
          top = 6;
        };
      };

      animations = {
        enable = true;
      };

      input = {
        keyboard = {
          xkb.layout = "us";
          numlock = true;
        };

        focus-follows-mouse = {
          enable = true;
          max-scroll-amount = "95%";
        };

        mouse = {
          accel-profile = "flat";
          accel-speed = 0;
          left-handed = false;
        };

        touchpad = {
          accel-profile = "flat";
          accel-speed = 0;
          disabled-on-external-mouse = false;
          dwt = false; # Disables touchpad while typing
          dwtp = false; # Disables touchpad while using trackpoint
          natural-scroll = false;
          #scroll-method = "two-finger"; # Type: null, "no-scroll", "two-finger", "edge", "on-button-down"
          tap = true; # Enable tap-to-click
        };

        warp-mouse-to-focus.enable = true;
      };
    };
  };
}
