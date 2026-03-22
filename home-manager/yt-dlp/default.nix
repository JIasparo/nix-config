{ ... }:

{
  imports = [
    ./settings.nix
  ];

  config = {
    programs.yt-dlp = {
      enable = true;
    };
  };
}
