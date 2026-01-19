{ ... }:

{
  imports = [
    ./settings.nix
    #./profiles
  ];

  config = {
    programs.librewolf = {
      enable = true;
    };
  };
}
