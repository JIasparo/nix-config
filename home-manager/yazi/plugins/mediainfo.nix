{ pkgs, ... }:

{
  config = {
    home.packages = with pkgs; [
      mediainfo
    ];

    programs.yazi = {
      plugins = {
        mediainfo = pkgs.yaziPlugins.mediainfo;
      };

      settings = {
        plugin = {
          prepend_preloaders = [
            {
              mime = "{audio,video,image}/*";
              run = "mediainfo";
            }
            {
              mime = "application/subrip";
              run = "$mediainfo";
            }
          ];

          prepend_previewers = [
            {
              mime = "{audio,video,image}/*";
              run = "mediainfo";
            }
            {
              mime = "application/subrip";
              run = "mediainfo";
            }
          ];
        };
      };
    };
  };
}
