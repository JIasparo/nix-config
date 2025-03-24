{ ... }:

{
  imports = [
    ./binds.nix
    ./monitors.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.hyprland = {
      enable = true;
    };
  };
}
