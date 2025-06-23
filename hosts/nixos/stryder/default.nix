{ ... }:

{
  imports = [
    # Required
    ./disk-configuration.nix
    ./hardware-configuration.nix
    ./../../common/core
    # Optional
    #./../../common/optional/gnome.nix
    ./../../common/optional/hyprland
    #./../../common/optional/niri
    ./../../common/optional/nvidia.nix
    ./../../common/optional/steam.nix
    ./../../common/optional/wireguard.nix
  ];
}
