{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.librewolf = {
      enable = true;
    };
  };
}
