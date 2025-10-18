{ pkgs, ... }:

{
  imports = [
    ./binds.nix
    ./extensions
    ./settings.nix
  ];

  config = {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
    };
  };
}
