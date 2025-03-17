{ ... }:

{
  imports = [
    #aa
  ];

  options = {
    #aa
  };

  config = {
    programs.git = {
      userName = "j";
      userEmail = "j@test.email";
      extraConfig.init.defaultBranch = "main";
    };
  };
}