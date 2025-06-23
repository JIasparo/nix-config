{ ... }:

{
  config = {
    programs.niri.settings.outputs = {
      "DP-1" = {
        enable = true;
        focus-at-startup = false;
        name = "Acer Technologies ED320QR S";
        scale = null;
        variable-refresh-rate = false; # Type: false, "on-demand", true

        #position = {
        #  x = 0;
        #  y = 0;
        #};

        #mode = {
        #  width = "";
        #  height = "";
        #  refresh = null;
        #};

        transform = {
          flipped = false;
          rotation = 0; # Type 0, 80, 180, 270
        };
      };

      "DP-2" = {
        enable = true;
        focus-at-startup = true;
        name = "Dell Inc. Dell S2716DG";
        scale = null;
        variable-refresh-rate = false; # Type: false, "on-demand", true

        #position = {
        #  x = 0;
        #  y = 0;
        #};

        #mode = {
        #  width = "";
        #  height = "";
        #  refresh = null;
        #};

        transform = {
          flipped = false;
          rotation = 0; # Type 0, 80, 180, 270
        };
      };
    };
  };
}
