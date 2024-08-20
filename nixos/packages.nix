{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Desktop
    terminator
    
    # CLI
    wget
    curl
    git
    neovim
    unzip

    # Services
    # bluez
    # bluez-tools

    # NixOS
    home-manager
    alejandra
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
  ];
}
