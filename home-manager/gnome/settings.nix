{ ... }:

{
  config = {
    dconf.settings = {
      "org/gnome/desktop/interface" = {
        clock-show-day = true;
        clock-show-weekday = true;
        color-scheme = "prefer-dark";
        enable-animations = false;
        enable-hot-corners = false;
      };

      "org/gnome/desktop/peripherals/keyboard" = {
        numlock-state = true;
      };

      "org/gnome/desktop/peripherals/mouse" = {
        accel-profile = "flat";
      };

      "org/gnome/mutter" = {
        dynamic-workspaces = false;
      };

      "org/gnome/desktop/wm/preferences" = {
        num-workspaces = 4;
      };

      # Delete Utilities folder
      "org/gnome/desktop/app-folders/folders" = {
        Utilities = [ ];
      };
    };
  };
}
