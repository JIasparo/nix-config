{ ... }:

{
  imports = [
    # Required
    ./../../common/core
    ./disk-configuration.nix
    ./hardware-configuration.nix
    # Optional
    #./../../common/optional/gnome.nix
    ./../../common/optional/hyprland
    ./../../common/optional/laptop.nix
    #./../../common/optional/nvidia.nix
    ./../../common/optional/steam.nix
    #./../../common/optional/wireguard.nix
  ];
}
