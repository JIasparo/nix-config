{ ... }:

{
  imports = [
    # Required
    ./../../common/core
    ./disk-configuration.nix
    ./hardware-configuration.nix

    # Optional
    ./../../common/optional/bluetooth.nix
    #./../../common/optional/gnome.nix
    ./../../common/optional/greetd.nix
    ./../../common/optional/gvfs.nix
    #./../../common/optional/hyprland
    ./../../common/optional/laptop.nix
    #./../../common/optional/niri
    #./../../common/optional/nvidia.nix
    #./../../common/optional/openrgb.nix
    #./../../common/optional/pipewire-fixes/disable-suspension.nix
    #./../../common/optional/pipewire-fixes/increase-headroom.nix
    #./../../common/optional/ratbagd.nix
    #./../../common/optional/steam.nix
    ./../../common/optional/thunar.nix
    #./../../common/optional/wireguard.nix
    #./../../common/optional/xdg.nix
  ];
}
