{
  description = "My nix configuration flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    niri.url = "github:sodiboo/niri-flake";
    niri.inputs.nixpkgs.follows = "nixpkgs";

    nixcord.url = "github:kaylorben/nixcord";
    nixcord.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      ...
    }:
    let
      username = "j";
      useremail = "${username}@test.email";
      hostname = "stryder";
      system = "x86_64-linux";
      configpath = "/home/${username}/nix-config";

      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {
        ${hostname} = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/nixos/${hostname}
            inputs.disko.nixosModules.disko
            inputs.niri.nixosModules.niri
          ];
          specialArgs = { inherit inputs username useremail hostname configpath; };
        };
      };

      homeConfigurations = {
        ${username} = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [
            ./home-manager
            inputs.stylix.homeModules.stylix
            inputs.nixcord.homeModules.nixcord
            inputs.niri.homeModules.niri
            inputs.niri.homeModules.stylix
          ];
          extraSpecialArgs = { inherit inputs username useremail hostname configpath; };
        };
      };
    };
}
