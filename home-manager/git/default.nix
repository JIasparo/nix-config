{ ... }:

{
  imports = [
    ./user.nix
  ];

  config = {
    programs.git = {
      enable = true;
    };
  };
}
