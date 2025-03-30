{ pkgs, ... }:

{
  imports = [
    ./binds.nix
    ./settings.nix
  ];

  config = {
    home.packages = with pkgs; [
      file
    ];

    programs.yazi = {
      enable = true;
    };
  };
}
