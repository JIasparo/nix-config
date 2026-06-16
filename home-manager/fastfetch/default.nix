{ ... }:

{
  imports = [
    ./logos
    ./modules
  ];

  config = {
    programs.fastfetch = {
      enable = true;
    };
  };
}
