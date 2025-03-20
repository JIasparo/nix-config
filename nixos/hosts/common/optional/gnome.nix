{ ... }:

{
  config = {
    services.xserver = {
      enable = true;

      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;

      # Configure keymap in X11
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };
}
