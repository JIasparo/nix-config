{ lib, pkgs, ... }:

{
  config = {
    # yt-dlp -t aac --cookies ~/Downloads/cookies.txt
    programs.yt-dlp.settings = {
      ffmpeg-location = "${lib.getExe pkgs.ffmpeg-full}";
      paths = [
        "Music/tag"
      ];

      output = [
        "\"%(artist)s - %(title)s.%(ext)s\""
      ];

      embed-metadata = true;
      embed-thumbnail = true;

      parse-metadata = [
        #
      ];

      replace-in-metadata = [
        #
      ];
    };
  };
}
