{ config, ... }:

{
  config = {
    programs.niri.settings = {
      # niri msg windows # List all open windows.
      
      window-rules = [
        # Game launcher rules
        {
          open-on-workspace = "${config.programs.niri.settings.workspaces.workspace-04.name}";
          open-focused = true;

          matches = [
            { app-id = "^(steam)$"; }
            {
              app-id = "^(electron)$";
              title = "^(Heroic Games Launcher)$";
            }
          ];
        }

        # Game rules
        {
          open-on-workspace = "${config.programs.niri.settings.workspaces.workspace-05.name}";
          open-focused = true;
          variable-refresh-rate = true; # Whether windows use VRR when displayed on an output with `on-demand` VRR.

          matches = [
            { app-id = "^(steam_app_\\d+)$"; }
            { app-id = "^(cs2)$"; }
          ];
        }

        # Instant messenger rules
        {
          open-on-workspace = "${config.programs.niri.settings.workspaces.workspace-08.name}";
          open-focused = true;

          matches = [
            { app-id = "^(equibop)$"; }
          ];
        }

        # Multimedia rules
        {
          #

          matches = [
            { app-id = "^(vlc)$"; }
          ];
        }

        # Recording software rules
        {
          open-on-workspace = "${config.programs.niri.settings.workspaces.workspace-09.name}";
          open-focused = true;

          matches = [
            { app-id = "^(com.obsproject.Studio)$"; }
          ];
        }

        # Screen recording window rules
        {
          border = {
            active.color = "#B32834";
            inactive.color = "#792F35";
          };

          focus-ring = {
            active.color = "#B32834";
            inactive.color = "#792F35";
          };

          shadow.color = "#792F35";

          matches = [
            { is-window-cast-target = true; }
          ];
        }

        # Sensitive window rules
        {
          block-out-from = "screencast"; # ("screencast": Window cannot be seen by screen recorders but can be seen by screenshots, "screen-capture": Window cannot be seen by screen recorders or screenshots).

          matches = [
            { app-id = "^(Bitwarden)$"; }
          ];
        }
      ];

      # niri msg layers # List all open layer-shell surfaces.
      layer-rules = [
        # Sensitive layer rules
        {
          block-out-from = "screencast"; # ("screencast", "screen-capture").

          matches = [
            { namespace = "^(swaync-notification-window)$"; }
          ];
        }
      ];
    };
  };
}
