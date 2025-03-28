{ ... }:

{
  imports = [
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.hyprland = {
      enable = true;
    };
  };
}
