{ ... }:

{
  imports = [
    ./plugins.nix
    ./settings.nix
  ];

  config = {
    programs.nixcord = {
      enable = true;
    };
  };
}
