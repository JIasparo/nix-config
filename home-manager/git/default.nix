{ username, useremail, ... }:

{
  config = {
    programs.git = {
      enable = true;

      userName = "${username}";
      userEmail = "${useremail}";
      extraConfig.init.defaultBranch = "main";
    };
  };
}
