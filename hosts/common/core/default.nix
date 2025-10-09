{ ... }:

{
  imports = [
    ./bootloader.nix
    ./dconf.nix
    ./network.nix
    ./packages.nix
    ./pipewire.nix
    ./security.nix
    ./system.nix
    ./user.nix
  ];
}
