{}:

{
  config = {
    programs.yt-dlp = {
      enable = true;

      settings = {
        flat-playlist = false;
        embed-metadata = true;
        embed-chapters = false;
        embed-info = false;
        output = "%(artist)s-%(title)s.%(ext)s";
        paths = "~/Music";
        format = "ba*";
        extract-audio = true;
      };
    };
  };
}