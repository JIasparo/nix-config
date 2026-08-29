{ ... }:

{
  config = {
    wayland.windowManager.niri.settings._children = [
      # niri msg outputs # List connected outputs.

      {
        # Dell Inc. Dell S2716DG
        output = {
          _args = [ "DP-1" ]; # Outputs are matched by connector name ("DP-1") or by the monitor manufacturer, model, and serial ("<manufacturer> <model> <serial>").
          mode._args = [ "2560x1440@143.964" ]; # Set the monitor resolution and refresh rate ("<width>x<height>@<refresh rate>").
          scale = 1; # Set the scale of the monitor.
          transform = "normal"; # Rotate the output counter-clockwise ("normal", "90", "180", "270", "flipped", "flipped-90", "flipped-180", "flipped-270").

          # Set the position of the output in the global coordinate space.
          position._props = {
            x = 0;
            y = 0;
          };

          # Enables variable refresh rate (VRR) on this output.
          variable-refresh-rate = {
            _props.on-demand = true; # VRR is on for windows with the `variable-refresh-rate` window-rule.
          };

          focus-at-startup = { }; # Whether to focus this output by default when niri starts.
        };
      }

      {
        # Acer Technologies ED320QR S
        output = {
          _args = [ "DP-2" ]; # Outputs are matched by connector name ("DP-1") or by the monitor manufacturer, model, and serial ("<manufacturer> <model> <serial>").
          mode._args = [ "1920x1080@144.001" ]; # Set the monitor resolution and refresh rate ("<width>x<height>@<refresh rate>").
          scale = 1; # Set the scale of the monitor.
          transform = "normal"; # Rotate the output counter-clockwise ("normal", "90", "180", "270", "flipped", "flipped-90", "flipped-180", "flipped-270").

          # Set the position of the output in the global coordinate space.
          position._props = {
            x = 2560;
            y = 0;
          };

          # Enables variable refresh rate (VRR) on this output.
          variable-refresh-rate = {
            _props.on-demand = true; # VRR is on for windows with the `variable-refresh-rate` window-rule.
          };

          #focus-at-startup = { }; # Whether to focus this output by default when niri starts.
        };
      }
    ];
  };
}
