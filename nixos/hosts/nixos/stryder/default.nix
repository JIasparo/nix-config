{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../common/core
    ./../../common/optional/gnome.nix
    #./../../common/optional/hyprland
    ./../../common/optional/nvidia.nix
    ./../../common/optional/steam.nix

    ./../../common/users/j.nix
  ];
  
  config = {
    networking.hostName = "stryder";
  };
}
