{ ... }:

{
  config = {
    programs.niri.settings = {
      spawn-at-startup = [
        { command = [ "bitwarden" ]; }
      ];

      workspaces = {
        "01" = {
          name = "1";
          open-on-output = "DP-2";
        };

        "02" = {
          name = "2";
          open-on-output = "DP-2";
        };

        "03" = {
          name = "3";
          open-on-output = "DP-1";
        };

        "04" = {
          name = "4";
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
