{ pkgs, ... }:

{
  imports = [
    ./binds.nix
    ./settings.nix
    ./nixd.nix
  ];

  config = {
    programs.vscode = {
      enable = true;
      package = pkgs.vscodium;

      profiles.default.userSettings = {
        "extensions.autoCheckUpdates" = false;
        "extensions.autoUpdate" = false;
        "telemetry.telemetryLevel" = "off";
        "update.mode" = "none";
      };
    };
  };
}