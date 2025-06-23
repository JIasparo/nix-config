{ ... }:

{
  imports = [
    ./binds.nix
    ./monitors.nix
    ./rules.nix
    ./settings.nix
  ];

  config = {
    programs.niri = {
      enable = true;
    };
  };
}
