{pkgs, username, ...}:

{
  config = {
    home.packages = with pkgs; [
      mpd
      rmpc
    ];

    services.mpd = {
      enable = true;
      musicDirectory = "/home/${username}/Music";
    };
  };
}