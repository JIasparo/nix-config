{ pkgs, ... }:

{
  config = {
    programs.obs-studio = {
      enable = true;

      package = (pkgs.obs-studio.override { cudaSupport = true; });

      plugins = with pkgs.obs-studio-plugins; [
        obs-pipewire-audio-capture
        obs-tuna
      ];
    };

    #home.file = {
    #  ".config/obs-studio/global.ini".source = ./global.ini;
    #  ".config/obs-studio/user.ini".source = ./user.ini;
    #  ".config/obs-studio/basic/profiles/Untitled/basic.ini".source = ./profiles/Untitled/basic.ini;
    #  ".config/obs-studio/basic/profiles/Untitled/recordEncoder.json".source = ./profiles/Untitled/recordEncoder.json;
    #  ".config/obs-studio/basic/profiles/Untitled/streamEncoder.json".source = ./profiles/Untitled/streamEncoder.json;
    #  ".config/obs-studio/basic/scenes/Untitled.json".source = ./scenes/untitled.json;
    #};
  };
}
