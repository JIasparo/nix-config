{ ... }:

{
  imports = [
    ./binds.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.hyprland = {
      enable = true;
    };
  };
}
