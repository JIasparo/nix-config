{ username, ... }:

{
  config = {
    stylix.targets = {
      librewolf.profileNames = [ "default" "${username}" ];

      obsidian.vaultNames = [ "Obsidian" ];

      vscodium.profileNames = [ "default" ];
    };
  };
}
