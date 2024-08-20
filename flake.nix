{
  description = "Multi-System Configuration";

  inputs = {
    # NixOS package cache - unstable (rolling release)
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # User home configuration
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Disk partitioning using flakes
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, disko, ... }@inputs:
  
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.markuss-t480 = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs system;
      };
      modules = [
        # NixOS configuration
        ./nixos/configuration.nix

        # Filesystem setup
        inputs.disko.nixosModules.disko
      ];
    };

    homeConfigurations.markuss = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
