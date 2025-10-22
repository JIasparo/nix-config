{ pkgs, lib, ... }:

{
  imports = [
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    home.packages = with pkgs; [
      xwayland-satellite
      swaybg
    ];

    programs.niri = {
      enable = true;

      settings.xwayland-satellite = {
        enable = true;
        path = "${lib.getExe pkgs.xwayland-satellite}";
      };
    };
  };
}
