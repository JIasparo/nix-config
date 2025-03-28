{ ... }:

{
  imports = [
    ./binds.nix
    ./hypridle.nix
    ./hyprlock.nix
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
