{ username, ... }:

{
  config = {
    stylix = {
      targets = {
        librewolf.profileNames = [ "default" "${username}" ];
        vscode.profileNames = [ "default" ];
      };
    };
  };
}
