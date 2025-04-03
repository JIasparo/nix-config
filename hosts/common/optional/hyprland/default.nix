{ ... }:

{
  imports = [
    ./xdg.nix
    ./greetd.nix
  ];

  config = {
    programs.hyprland.enable = true;

    # Force apps to use Wayland
    #environment.sessionVariables = {
    #  NIXOS_OZONE_WL = "1";
    #  ELECTRON_OZONE_PLATFORM_HINT = "auto";
    #};

  };
}
