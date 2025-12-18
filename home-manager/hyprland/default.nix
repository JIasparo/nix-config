{ ... }:

{
  imports = [
    ./binds.nix
    ./hypridle.nix
    #./hyprlauncher.nix
    ./hyprlock.nix
    ./hyprpaper.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    wayland.windowManager.hyprland = {
      enable = true;

      extraConfig = ''
        ecosystem:no_update_news=true;
      '';
    };
  };
}
