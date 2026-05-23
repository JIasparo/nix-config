{ pkgs, ... }:

{
  config = {
    programs.mpv = {
      enable = true;

      scripts = with pkgs.mpvScripts; [
        #
      ];

      config = {
        #profile = "gpu-hq";
        #force-window = true;
        #ytdl-format = "bestvideo+bestaudio";
        #cache-default = 4000000;
      };
    };
  };
}
