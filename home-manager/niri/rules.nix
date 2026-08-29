{ ... }:

{
  config = {
    wayland.windowManager.niri.settings._children = [
      # Window rules
      # niri msg windows # List all open windows.

      {
        # Game launcher rules
        window-rule._children = [
          { open-on-workspace = "workspace-04"; }
          { open-focused = true; }

          {
            match._props = {
              app-id = "^(steam)$";
            };
          }
          {
            match._props = {
              app-id = "^(heroic)$";
            };
          }
        ];
      }

      {
        # Game rules
        window-rule._children = [
          { open-on-workspace = "workspace-05"; }
          { open-focused = true; }
          { variable-refresh-rate = true; } # Whether windows use VRR when displayed on an output with `on-demand` VRR.

          {
            match._props = {
              app-id = "^(steam_app_\\d+)$";
            };
          }
          {
            match._props = {
              app-id = "^(cs2)$";
            };
          }
          {
            match._props = {
              app-id = "^(sm64coopdx)$";
            };
          }
        ];
      }

      {
        # Instant messenger rules
        window-rule._children = [
          { open-on-workspace = "workspace-08"; }
          { open-focused = true; }

          {
            match._props = {
              app-id = "^(equibop)$";
            };
          }
        ];
      }

      {
        # Multimedia rules
        window-rule._children = [
          #

          {
            match._props = {
              app-id = "^(vlc)$";
            };
          }
          {
            match._props = {
              app-id = "^(mpv)$";
            };
          }
        ];
      }

      {
        # Recording software rules
        window-rule._children = [
          { open-on-workspace = "workspace-09"; }
          { open-focused = true; }

          {
            match._props = {
              app-id = "^(com.obsproject.Studio)$";
            };
          }
        ];
      }

      {
        # Screen recording window rules
        window-rule._children = [
          {
            focus-ring = {
              active-color = "#B32834";
              inactive-color = "#792F35";
            };
          }
          {
            border = {
              active-color = "#B32834";
              inactive-color = "#792F35";
            };
          }
          { shadow.color = "#792F35"; }

          {
            match._props = {
              is-window-cast-target = true;
            };
          }
        ];
      }

      {
        # Sensitive window rules
        window-rule._children = [
          { block-out-from = "screencast"; } # Blocks out windows from xdg-desktop-portal screencasts ("screencast": Window cannot be seen by screen recorders but can be seen by screenshots, "screen-capture": Window cannot be seen by screen recorders or screenshots).

          {
            match._props = {
              app-id = "^(Bitwarden)$";
            };
          }
        ];
      }

      # Layer rules
      # niri msg layers # List all open layer-shell

      {
        # Sensitive layer rules
        layer-rule._children = [
          { block-out-from = "screencast"; } # Blocks out windows from xdg-desktop-portal screencasts ("screencast": Window cannot be seen by screen recorders but can be seen by screenshots, "screen-capture": Window cannot be seen by screen recorders or screenshots).

          {
            match._props = {
              namespace = "^(swaync-notification-window)$";
            };
          }
        ];
      }
    ];
  };
}
