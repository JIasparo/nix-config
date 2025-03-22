{ username, ... }:

{
  config = {
    users.users.${username} = {
      # Set the real password using passwd command in terminal.
      initialPassword = "pizza123";
      isNormalUser = true;
      description = "${username}'s account";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
