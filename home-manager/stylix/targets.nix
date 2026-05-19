{ username, ... }:

{
  config = {
    stylix.targets = {
      librewolf.profileNames = [ "default" "${username}" ];

      obsidian.vaultNames = [ "Obsidian" ];

      vscode.profileNames = [ "default" ];
    };
  };
}
