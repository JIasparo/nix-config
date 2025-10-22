{ ... }:

{
  config = {
    programs.niri.settings.outputs = {
      # Acer Technologies ED320QR S
      "DP-1" = {
        enable = true;
        focus-at-startup = false;
        scale = 1;
        variable-refresh-rate = "on-demand"; # Type: false, "on-demand", true

        mode = {
          width = 1920;
          height = 1080;
          refresh = 144.001;
        };

        position = {
          x = 2560;
          y = 0;
        };

        transform = {
          flipped = false;
          rotation = 0; # Type 0, 90, 180, 270
        };
      };

      # Dell Inc. Dell S2716DG
      "DP-2" = {
        enable = true;
        focus-at-startup = true;
        scale = 1;
        variable-refresh-rate = "on-demand"; # Type: false, "on-demand", true

        mode = {
          width = 2560;
          height = 1440;
          refresh = 143.964;
        };

        position = {
          x = 0;
          y = 0;
        };

        transform = {
          flipped = false;
          rotation = 0; # Type 0, 90, 180, 270
        };
      };
    };
  };
}
