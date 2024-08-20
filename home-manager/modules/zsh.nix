{
  pkgs,
  config,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakeDir = "~/dotfiles";
    in {
      vim = "nvim";
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      update = "nix flake update ${flakeDir}";
      upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      repkg = "${flakeDir}/repkg";
      hms = "home-manager switch --flake ${flakeDir}";

      conf = "vim ${flakeDir}/nixos/configuration.nix";
      pkgs = "vim ${flakeDir}/nixos/packages.nix";

      la = "ls -la";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "sudo"];
      theme = "simple";
    };
  };
}
