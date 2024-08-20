{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/include.nix
  ];

  system.stateVersion = "24.05";
}
