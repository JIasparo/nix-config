{ pkgs, ... }:

{
  imports = [
    ./nixd.nix
  ];

  options = {
    #aa
  };

  config = {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
    };
  };
}