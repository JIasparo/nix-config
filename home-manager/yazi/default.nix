{...}:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.yazi = {
      enable = true;
    };
  };
}