{ ... }:

{
  config = {
    programs.niri.settings = {
      spawn-at-startup = [
        #{ argv = [ "bitwarden" ]; }
      ];

      workspaces = {
        "workspace-1" = {
          name = "1";
          open-on-output = "DP-2";
        };

        "workspace-2" = {
          name = "2";
          open-on-output = "DP-2";
        };

        "workspace-3" = {
          name = "3";
          open-on-output = "DP-2";
        };

        "workspace-4" = {
          name = "4";
          open-on-output = "DP-1";
        };

        "workspace-5" = {
          name = "5";
          open-on-output = "DP-1";
        };

        "workspace-6" = {
          name = "6";
          open-on-output = "DP-1";
        };
      };

      window-rules = [
        #
      ];

      layer-rules = [
        #
      ];
    };
  };
}
