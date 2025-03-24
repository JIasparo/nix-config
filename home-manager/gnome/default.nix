{ ... }:

{
  imports = [
    ./binds.nix
    ./settings.nix
  ];

  config = {
    dconf = {
      # dconf watch /
      # Terminal command to see what happens when you toggle options in GNOME.
      enable = true;
    };
  };
}
