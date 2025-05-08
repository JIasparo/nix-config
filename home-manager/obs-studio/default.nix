{ pkgs, ... }:

{
  config = {
    programs.obs-studio = {
      enable = true;

      plugins = with pkgs.obs-studio-plugins; [
        #
      ];
    };

    #home.file = {
    #  ".config/obs-studio/global.ini".source = ./global.ini;
    #  ".config/obs-studio/user.ini".source = ./user.ini;
    #  ".config/obs-studio/basic/profiles/Untitled/basic.ini".source = ./basic.ini;
    #};
  };
}
