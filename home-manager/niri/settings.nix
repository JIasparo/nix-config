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

      hotkey-overlay = {
        skip-at-startup = true; # Whether the hotkey overlay shows when niri starts.
        hide-not-bound = false; # Niri shows important keybinds, even if they are not bound to a key. If enabled, niri will only show keybinds bound to a key.
      };

      screenshot-path = "~/Pictures/Screenshots/niri-%Y%m%d-%H:%M:%S.png"; # The path niri's built-in screenshot tool saves screenshots to.
      clipboard.disable-primary = true; # Disable primary selection clipboard (middle mouse paste).
      prefer-no-csd = true; # Whether to prefer server-side decorations (SSD) over client-side decorations (CSD).

      # Input devices and related settings
      input = {
        keyboard = {
          xkb.layout = "us";
          numlock = true; # Enable NumLock on startup.
        };

        focus-follows-mouse = {
          enable = true; # Whether focus follows the mouse.
          max-scroll-amount = "0%"; # Focus-follows-mouse will not focus a window if it scrolls the screen more than this amount (0% - 100%).
        };

        mouse = {
          accel-profile = "flat"; # What acceleration profile to use ("adaptive", "flat": disables pointer acceleration).
          accel-speed = 0; # Pointer acceleration speed (-1.0 - 1.0).
          left-handed = false; # Whether to set the device to left-handed mode.
        };

        touchpad = {
          accel-profile = "flat"; # What acceleration profile to use ("adaptive", "flat": disables pointer acceleration).
          accel-speed = 0; # Pointer acceleration speed (-1.0 - 1.0).
          disabled-on-external-mouse = false; # Disables touchpad when an external pointer device is plugged in.
          dwt = false; # Disables touchpad while typing.
          dwtp = false; # Disables touchpad while using trackpoint.
          natural-scroll = false; # If enabled, inverts the scrolling direction.
          scroll-method = "two-finger"; # When to generate scroll events instead of pointer motion events ("no-scroll", "two-finger", "edge", "on-button-down").
          tap = true; # Enable tap-to-click.
          click-method = "clickfinger"; # Method to determine which mouse button is pressed when you click the touchpad ("button-areas": Button is determined by which part of the touchpad was clicked, "clickfinger": Button is determined by how many fingers clicked).
        };

        warp-mouse-to-focus = {
          enable = true; # Whether the mouse moves to newly focused windows.
          mode = "center-xy-always"; # Method to determine how the mouse warps ("center-xy": If the mouse was outside the newly focused window, warp the mouse to the center of the window, "center-xy-always": Always warp the mouse to the center of the newly focused window).
        };

        #workspace-auto-back-and-forth.enable = false; # Focus the previous active workspace if the desired workspace is already focused.
      };

      # Cursor settings and theming
      cursor = {
        size = config.stylix.cursor.size;
        theme = "${config.stylix.cursor.name}";
      };

      # Scroller layout
      layout = {
        border = {
          enable = true; # Whether borders are drawn.
          width = 2; # Border width in pixels.
        };

        focus-ring.enable = false; # Whether focus ring is drawn.

        shadow.enable = false; # Whether shadows are drawn.

        insert-hint.enable = true; # Shows where a window will be inserted when you drag and release the window.

        # Widths that `switch-preset-column-width` will cycle through.
        preset-column-widths = [
          { proportion = 0.2; }
          { proportion = 0.5; }
          { proportion = 0.8; }
        ];

        # Heights that `switch-preset-window-height` will cycle through.
        preset-window-heights = [
          { proportion = 0.2; }
          { proportion = 0.5; }
          { proportion = 0.8; }
        ];

        always-center-single-column = false; # Whether a single column is always centered.
        center-focused-column = "never"; # When changing focus, the focused column is automatically centered ("never": If the focused column doesn't fit, it will be aligned to the edges of the screen, "on-overflow": If the focused column doesn't fit, it will be centered on the screen, "always": The focused column will always be centered, even if it was already fully visible).
        default-column-display = "normal"; # How windows in columns should be displayed by default ("normal": Windows are arranged vertically, "tabbed": Windows are arranged in tabs).

        # The default width for new columns.
        default-column-width = {
          proportion = 0.5;
        };

        tab-indicator = {
          # Tab indicator settings
          enable = true; # Whether tab indicators are drawn for tabbed columns.
          hide-when-single-tab = false; # Whether tab indicators are shown when there is a single window in a tabbed column.
          place-within-column = true; # Whether the tab indicator is included in column sizing.
          position = "left"; # The position of the tab indicator relative to the tabbed column ("bottom", "left", "right", "top").

          # Tab indicator theming
          length.total-proportion = 1.0; # The relative length the tab indicator should take up.
          corner-radius = 0.0; # Tab corner radius in pixels. If `gaps-between-tabs` is zero, only the first and last tabs have rounded corners.
          gap = 3.0; # The gap between the tab indicator and the tabbed column in pixels.
          gaps-between-tabs = 3.0; # The gap between the individual tabs in pixels.
          width = 2.0; # The thickness of the tab indicator in pixels.
        };

        gaps = 3; # The gap between windows in the layout, measured in pixels.

        # The distance from the edges of the screen to the edges of the working area.
        struts = {
          bottom = 5.5;
          left = 17.0;
          right = 17.0;
          top = 5.5;
        };
      };

      # Animations
      animations.enable = false; # Whether to enable animations for windows and workspaces.

      # Gesture settings
      gestures = {
        hot-corners.enable = false; # Whether moving the mouse to the very top-left corner of a monitor toggles the overview.
      };
    };
  };
}
