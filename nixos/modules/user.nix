{pkgs, ...}: {
  users.users.markuss = {
    isNormalUser = true;
    description = "Markuss Mišķis";
    extraGroups = ["wheel" "audio"];
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
}
