{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.floorp.enable = true;
  };
}