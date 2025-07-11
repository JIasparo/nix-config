{ lib, pkgs, ... }:

{
  config = {
    home.file = {
      ".gytmdl/config.json".text = ''
        {
          "save_cover": false,
          "overwrite": false,
          "log_level": "INFO",
          "no_exceptions": false,
          "output_path": "Music/tag",
          "temp_path": "temp",
          "cookies_path": null,
          "ffmpeg_path": "${lib.getExe pkgs.ffmpeg-full}",
          "aria2c_path": "${lib.getExe pkgs.aria2}",
          "download_mode": "ytdlp",
          "po_token": null,
          "itag": "251",
          "cover_size": "1200",
          "cover_format": "png",
          "cover_quality": 94,
          "template_folder": "",
          "template_file": "{artist} - {title}",
          "template_date": "%Y-%m-%dT%H:%M:%SZ",
          "exclude_tags": null,
          "no_synced_lyrics": true,
          "synced_lyrics_only": false,
          "truncate": null
        }
      '';
    };
  };
}
