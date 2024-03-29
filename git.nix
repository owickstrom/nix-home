{ config, lib, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "owickstrom";
    userEmail = "oskar@wickstrom.tech";
    ignores = [ ".vscode" ".envrc" ".direnv" ];
    aliases = {
      br = "branch";
      co = "checkout";
      ci = "commit";
      cp = "commit -p";
      s = "status";
      st = "status";
      d = "diff";
      pl = "pull";
      ps = "push";
      l =
        "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
    };
    extraConfig = {
      core.editor = "vim";
      credential.helper = "store --file ~/.git-credentials";
      pull.rebase = "false";
    };
  };
}
