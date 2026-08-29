{
  lib,
  pkgs,
  config,
  ...
}:

{
  config = {
    wayland.windowManager.niri.settings = {
      environment = {
        #
      };

      _children = [
        { spawn-sh-at-startup = "${lib.getExe pkgs.swaybg} -i ${config.stylix.image}"; }
        { spawn-at-startup = "${lib.getExe pkgs.sway-audio-idle-inhibit}"; }
      ];

      input = {
        keyboard = {
          xkb.layout = "us";
          numlock = { }; # Enable NumLock on startup.
        };

        touchpad = {
          #off = { }; # Disables sending events from this device.
          tap = { }; # Enable tap-to-click.
          #dwt = { }; # Disables touchpad while typing.
          #dwtp = { }; # Disables touchpad while using trackpoint.
          #natural-scroll = { }; # If enabled, inverts the scrolling direction.
          accel-speed = 0; # Pointer acceleration speed (-1.0 - 1.0).
          accel-profile = "flat"; # What acceleration profile to use ("adaptive", "flat": disables pointer acceleration).
          scroll-method = "two-finger"; # When to generate scroll events instead of pointer motion events ("no-scroll", "two-finger", "edge", "on-button-down").
          click-method = "button-areas"; # Method to determine which mouse button is pressed when you click the touchpad ("button-areas": Button is determined by which part of the touchpad was clicked, "clickfinger": Button is determined by how many fingers clicked).
          #left-handed = { }; # Sets the device to left-handed mode.
          #disabled-on-external-mouse = { }; # Disables touchpad when an external pointer device is plugged in.
          #middle-emulation = { }; # Emulate a middle mouse click by pressing left and right mouse buttons at once.
        };

        mouse = {
          #off = { }; # Disables sending events from this device.
          #natural-scroll = { }; # If enabled, inverts the scrolling direction.
          accel-speed = 0; # Pointer acceleration speed (-1.0 - 1.0).
          accel-profile = "flat"; # What acceleration profile to use ("adaptive", "flat": disables pointer acceleration).
          #left-handed = { }; # Sets the device to left-handed mode.
        };

        # Makes the mouse warp to newly focused windows.
        warp-mouse-to-focus._props = {
          mode = "center-xy-always"; # Method to determine how the mouse warps ("center-xy": If the mouse was outside the newly focused window, warp the mouse to the center of the window, "center-xy-always": Always warp the mouse to the center of the newly focused window).
        };

        # Focuses windows and outputs automatically when moving the mouse over them.
        focus-follows-mouse._props = {
          max-scroll-amount = "0%"; # Focus-follows-mouse will not focus a window if it scrolls the screen more than this amount (0% - 100%).
        };
      };

      layout = {
        gaps = 3; # Gaps around (inside and outside) windows in logical pixels.
        center-focused-column = "never"; # When changing focus, the focused column is automatically centered ("never": If the focused column doesn't fit, it will be aligned to the edges of the screen, "on-overflow": If the focused column doesn't fit, it will be centered on the screen, "always": The focused column will always be centered, even if it was already fully visible).
        #always-center-single-column = { }; # A single column is always centered on a workspace.

        # Widths that `switch-preset-column-width` will cycle through.
        preset-column-widths._children = [
          { proportion = 0.2; }
          { proportion = 0.5; }
          { proportion = 0.8; }
        ];

        # The default width for new columns.
        default-column-width = {
          proportion = 0.5;
        };

        # Heights that `switch-preset-window-height` will cycle through.
        preset-window-heights._children = [
          { proportion = 0.2; }
          { proportion = 0.5; }
          { proportion = 0.8; }
        ];

        # A border drawn around only the active window.
        focus-ring = {
          off = { }; # Turns off focus ring.
          #on = { }; # Turns on focus ring.
        };

        # A border drawn around all windows and affects their sizes.
        border = {
          #off = { }; # Turns off borders.
          on = { }; # Turns on borders.
          width = 2; # Border width in pixels.
        };

        # The shadow rendered behind a window.
        shadow = {
          off = { }; # Turns off shadows.
          #on = { }; # Turns on shadows.
        };

        # The visual indicator to show windows in a column while in the tabbed display mode.
        tab-indicator = {
          #off = { }; # Turns off the tab indicator.
          on = { }; # Turns on the tab indicator.
          #hide-when-single-tab = { }; # Hides the tab indicators for tabbed columns when there is only a single window present.
          place-within-column = { }; # Includes the tab indicator in column sizing.
          gap = 3.0; # The gap between the tab indicator and the tabbed column in pixels.
          width = 2.0; # The thickness of the tab indicator in pixels.
          length._props.total-proportion = 1.0; # The relative length the tab indicator should take up.
          position = "left"; # The position of the tab indicator relative to the tabbed column ("bottom", "left", "right", "top").
          gaps-between-tabs = 3.0; # The gap between the individual tabs in pixels.
          corner-radius = 0.0; # Tab corner radius in pixels. If `gaps-between-tabs` is zero, only the first and last tabs have rounded corners.
        };

        # Shows where a window will be inserted when you drag and release the window.
        insert-hint = {
          #off = { }; # Turns off the insert hint.
          on = { }; # Turns on the insert hint.
        };

        # The distance from the edges of the screen to the edges of the working area.
        struts = {
          left = 17.0;
          right = 17.0;
          top = 5.5;
          bottom = 5.5;
        };
      };

      prefer-no-csd = { }; # Whether to prefer server-side decorations (SSD) over client-side decorations (CSD).
      screenshot-path = "~/Pictures/Screenshots/niri-%Y%m%d-%H:%M:%S.png"; # The path niri's built-in screenshot tool saves screenshots to.

      cursor = {
        xcursor-theme = "${config.stylix.cursor.name}";
        xcursor-size = config.stylix.cursor.size;
        hide-after-inactive-ms = 1000; # The cursor will automatically hide once this number of milliseconds passes since the last cursor movement.
      };

      clipboard.disable-primary = { }; # Disable primary selection clipboard (middle mouse paste).

      # Niri shows important keybinds, even if they are not bound to a key.
      hotkey-overlay = {
        skip-at-startup = { }; # Hides the hotkey help at Niri startup.
        #hide-not-bound = { }; # Niri will only show keybinds bound to a key.
      };

      # Blur configuration that affects all background blur.
      blur = {
        #off = { }; # Turns off blur.
      };

      # Animation configuration.
      animations = {
        off = { }; # Turns off all animations.
      };

      gestures = {
        # Put your mouse at the very top-left corner of a monitor to toggle the overview. Also works during drag-and-dropping something.
        hot-corners = {
          off = { }; # Turns off hot corners.
        };
      };
    };
  };
}
