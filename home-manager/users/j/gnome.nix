{ pkgs, ... }:

{
  config = {
    dconf = {
      enable = true;

      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
      settings."org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = with pkgs.gnomeExtensions; [
          #
        ];
      };
    };
  };
}