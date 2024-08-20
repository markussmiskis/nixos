{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix # hardware setup
    ./disko.nix # filesystem setup
    ./packages.nix # system packages
    ./modules/include.nix # system modules
  ];

  system.stateVersion = "24.05";
}
