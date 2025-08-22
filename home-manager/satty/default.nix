{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.satty = {
      enable = true;
    };
  };
}
