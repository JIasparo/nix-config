{ pkgs, ... }:

{
  imports = [
    ./binds.nix
    ./settings.nix
    ./plugins
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
