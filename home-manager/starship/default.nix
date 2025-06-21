{ ... }:

{
  imports = [
    ./settings
  ];

  config = {
    programs.starship = {
      enable = true;
    };
  };
}
