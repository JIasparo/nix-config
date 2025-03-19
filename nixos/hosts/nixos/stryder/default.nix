{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../common/core
    ./../../common/optional/cinnamon.nix
    #./../../common/optional/regreet.nix
    #./../../common/optional/hyprland.nix
    ./../../common/optional/nvidia.nix
    ./../../common/optional/steam.nix

    ./../../common/users/j.nix
  ];

  networking.hostName = "stryder";
}