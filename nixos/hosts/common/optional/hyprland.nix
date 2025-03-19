{ ... }:

{
  imports = [
    #aa
  ];

  options = {
    #aa
  };

  config = {
    programs.hyprland.enable = true;

    # Force apps to use Wayland
    environment.sessionVariables.NIXOS_OZONE_WL = "1";
  };
}
