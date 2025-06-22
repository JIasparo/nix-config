{ pkgs, ... }:

{
  config = {
    programs.yazi = {
      plugins = {
        starship = pkgs.yaziPlugins.starship;
      };

      initLua = "require(\"starship\"):setup()";
    };
  };
}
