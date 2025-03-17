{ ... }:

let
  username = "j";
in
{
  users.users.${username} = {
    # Set the real password using passwd command in terminal.
    initialPassword = "pizza123";
    isNormalUser = true;
    description = "${username}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}