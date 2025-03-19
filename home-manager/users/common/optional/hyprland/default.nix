{ ... }:

{

  imports = [
    # Needed for Hyprland to work
    ./../swaync
  ];
  config = {
    wayland.windowManager.hyprland = {
      enable = true;
    };
  };
}
