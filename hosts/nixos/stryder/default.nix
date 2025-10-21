{ ... }:

{
  imports = [
    # Required
    ./disk-configuration.nix
    ./hardware-configuration.nix
    ./../../common/core
    
    # Optional
    #./../../common/optional/gnome.nix
    #./../../common/optional/hyprland
    ./../../common/optional/niri
    ./../../common/optional/nvidia.nix
    ./../../common/optional/openrgb.nix
    ./../../common/optional/pipewire-fixes/disable-suspension.nix
    ./../../common/optional/pipewire-fixes/increase-headroom.nix
    ./../../common/optional/ratbagd.nix
    ./../../common/optional/steam.nix
    ./../../common/optional/thunar.nix
    ./../../common/optional/wireguard.nix
  ];
}
