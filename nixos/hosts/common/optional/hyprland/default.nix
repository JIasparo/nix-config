{ ... }:

{
  imports = [
    # Needed for Hyprland to work
    ./../regreet.nix
  ];

  config = {
    programs.hyprland.enable = true;

    # Force apps to use Wayland
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
  };
}
