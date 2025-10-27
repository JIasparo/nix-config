{ username, useremail, ... }:

{
  config = {
    programs.git.settings = {
      user = {
        name = "${username}";
        email = "${useremail}";
      };
    };
    #init.defaultBranch = "main";
  };
}
