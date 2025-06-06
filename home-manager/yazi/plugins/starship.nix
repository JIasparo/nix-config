{ pkgs, ... }:

{
  config = {
    programs.yazi = {
      plugins = {
        starship = pkgs.yaziPlugins.starship;
      };

      
    };
  };
}
