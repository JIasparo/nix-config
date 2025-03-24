{ username, useremail, ... }:

{
  config = {
    programs.git = {
      userName = "${username}";
      userEmail = "${useremail}";
      extraConfig.init.defaultBranch = "main";
    };
  };
}
