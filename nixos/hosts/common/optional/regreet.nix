{ pkgs, ... }:

{
  imports = [
    #aa
  ];

  options = {
    #aa
  };

  config = {
    services.greetd = {
      enable = true;
      package = pkgs.greetd.regreet;
    };
  };
}