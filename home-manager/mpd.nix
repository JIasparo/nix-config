{pkgs, username, ...}:

{
  config = {
    home.packages = with pkgs; [
      mpd
      rmpc
      ncmpcpp
    ];

    services.mpd = {
      enable = true;
      musicDirectory = "/home/${username}/Music";
    };
  };
}