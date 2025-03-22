{ ... }:

{
  imports = [
    # Required
    ./hardware-configuration.nix
    ./../../common/core
    # Optional
    ./../../common/optional/nvidia.nix
    ./../../common/optional/gnome.nix
    ./../../common/optional/steam.nix
  ];

  config = {
    networking.hostName = "stryder";
  };
}
