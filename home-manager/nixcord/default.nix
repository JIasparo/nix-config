{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.nixcord = {
      enable = true;
    };
  };
}
