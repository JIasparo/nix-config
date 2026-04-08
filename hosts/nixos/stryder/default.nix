{ ... }:

{
  imports = [
    # Required
    ./../../common/core
    ./disk-configuration.nix
    ./hardware-configuration.nix
    
    # Optional
    #./../../common/optional/gnome.nix
    #./../../common/optional/hyprland
    #./../../common/optional/niri
    ./../../common/optional/greetd.nix
    #./../../common/optional/gvfs.nix
    ./../../common/optional/xdg.nix
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
