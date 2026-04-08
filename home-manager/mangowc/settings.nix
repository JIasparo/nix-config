{ ... }:

{
  config = {
    wayland.windowManager.mango.settings = {
      env = [
        # Force apps to use Wayland
        #"NIXOS_OZONE_WL"
      ];

      # Scroller layout
      scroller_structs = 20;
      scroller_default_proportion = 0.5;
      scroller_prefer_overspread = 0;
      edge_scroller_pointer_focus = 0;
      scroller_proportion_preset = "0.2,0.5,0.8";

      # Overview settings
      ov_tab_mode = 1; # Circles focus through windows in overview; releasing the mod key exits overview.
      overviewgappi = 5; # Inner gap in overview mode.
      overviewgappo = 30; # Outer gap in overview mode.
    };
  };
}
