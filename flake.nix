{
  description = "Multi-System Configuration";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs:
  
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.markuss-t480 = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs system;
      };
      modules = [
        ./hosts/markuss-t480/configuration.nix
      ];
    };

    nixosConfigurations.markuss-vm = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs system;
      };
      modules = [
        ./hosts/markuss-vm/configuration.nix
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
