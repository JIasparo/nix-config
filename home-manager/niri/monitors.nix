{ config, ... }:

{
  config = {
    programs.niri.settings.outputs = {
      # niri msg outputs # List connected outputs.

      # Dell Inc. Dell S2716DG
      "DP-1" = {
        enable = true;
        focus-at-startup = true; # Whether to focus this output by default when niri starts.
        scale = 1; # Niri will automatically pick a scale for this output when null.
        variable-refresh-rate = "on-demand"; # Whether to enable variable refresh rate (VRR) on this output (false: no VRR, "on-demand": VRR is on for windows with the `variable-refresh-rate` window-rule, true: VRR always on).

        mode = {
          width = 2560;
          height = 1440;
          refresh = null; # Niri will pick the highest refresh rate for the resolution when omitted.
        };

        position = {
          x = 0;
          y = 0;
        };

        transform = {
          flipped = false; # Whether to flip this output vertically.
          rotation = 0; # Counter-clockwise rotation of this output in degrees (0, 90, 180, 270).
        };
      };

      # Acer Technologies ED320QR S
      "DP-2" = {
        enable = true;
        focus-at-startup = false; # Whether to focus this output by default when niri starts.
        scale = 1; # Niri will automatically pick a scale for this output when null.
        variable-refresh-rate = "on-demand"; # Whether to enable variable refresh rate (VRR) on this output (false: no VRR, "on-demand": VRR is on for windows with the `variable-refresh-rate` window-rule, true: VRR always on).

        mode = {
          width = 1920;
          height = 1080;
          refresh = null; # Niri will pick the highest refresh rate for the resolution when omitted.
        };

        position = {
          x = config.programs.niri.settings.outputs."DP-1".mode.width/ config.programs.niri.settings.outputs."DP-1".scale;
          y = 0;
        };

        transform = {
          flipped = false; # Whether to flip this output vertically.
          rotation = 0; # Counter-clockwise rotation of this output in degrees (0, 90, 180, 270).
        };
      };
    };
  };
}
