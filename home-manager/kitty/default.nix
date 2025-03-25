{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.kitty = {
      enable = true;
    };
  };
}
