{ username, ... }:

{
  config = {
    users.users.${username} = {
      initialPassword = "pizza123"; # Set the real password using passwd command in terminal.
      isNormalUser = true;
      description = "${username}'s account";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
