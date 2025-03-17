{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./../../common/core
    ./../../common/optional/cinnamon.nix
    ./../../common/optional/nvidia.nix
    ./../../common/optional/steam.nix

    ./../../common/users/j.nix
  ];

  networking.hostName = "stryder";
}