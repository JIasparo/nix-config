{ lib, pkgs, ... }:

{
  config = {
    programs.yt-dlp = {
      extraConfig = ''
        --alias get-m4a "-f 'ba[acodec^=opus]/ba/b' -x --audio-format m4a"
      '';
      #--alias get-m4a "-f 'ba[acodec^=opus]/ba[acodec^=aac]/ba[acodec^=mp4a.40.]/ba/b' -x --audio-format m4a"

      settings = {
        ffmpeg-location = "${lib.getExe pkgs.ffmpeg-full}";
        paths = [
          "Music/tag"
        ];

        output = [
          "\"%(artist)s - %(title)s.%(ext)s\""
        ];

        embed-metadata = true;
        #embed-thumbnail = true;

        parse-metadata = [
          #
        ];

        replace-in-metadata = [
          #
        ];
      };
    };
  };
}
