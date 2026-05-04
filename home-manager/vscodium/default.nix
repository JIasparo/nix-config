{ ... }:

{
  imports = [
    ./binds.nix
    ./extensions
    ./settings.nix
  ];

  config = {
    programs.vscodium = {
      enable = true;
    };
  };
}
