{ ... }:

{
  imports = [
    ./j-git.nix
  ];

  options = {
    #aa
  };

  config = {
    programs.git = {
      enable = true;
    };
  };
}
