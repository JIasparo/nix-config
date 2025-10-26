{ ... }:

{
  imports = [
    #./dictionary.nix
    ./plugins.nix
    ./settings.nix
  ];

  config = {
    programs.nixcord = {
      enable = true;
    };
  };
}
