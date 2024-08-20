{
  imports = [
    ./packages.nix
    ./modules/include.nix
  ];

  home = {
    username = "markuss";
    homeDirectory = "/home/markuss";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
  services.home-manager.autoUpgrade = {
    enable = true;
    frequency = "daily";
  };
}
