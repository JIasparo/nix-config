{ ... }:

{
  imports = [
    ./bootloader.nix
    ./network.nix
    ./packages.nix
    ./pipewire.nix
    ./security.nix
    ./system.nix
    ./user.nix
  ];

  config = {
    programs.dconf.enable = true;
  };
}