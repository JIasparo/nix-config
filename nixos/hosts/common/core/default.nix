{ ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./packages.nix
    ./pipewire.nix
    ./system.nix
  ];
}