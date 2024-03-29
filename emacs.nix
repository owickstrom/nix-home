{ config, lib, pkgs, ... }: {
  programs.emacs = {
    enable = true;
    extraPackages = epkgs:
      with epkgs; [
        magit
        evil-collection
        typescript-mode
        tide
        evil
        kotlin-mode
        paredit
        projectile
        rg
        rust-mode
        # company-lsp
        lsp-mode
        lsp-ui
        lsp-haskell
        lsp-python-ms
        mixed-pitch
        company
        nix-mode
        direnv
        emmet-mode
        undo-tree
        writeroom-mode
        yasnippet
        yasnippet-snippets
        haskell-snippets
        flycheck
        company
        exec-path-from-shell
        fstar-mode
        psc-ide
        purescript-mode
        haskell-mode
        markdown-mode
        tuareg
        merlin
        flycheck-ocaml
        atom-one-dark-theme
        minimal-theme
        doom-themes
        poetry
        elixir-mode
        smartparens
        ruby-end
        web-mode
        theme-changer
        agda2-mode
        specstrom-mode
        prop-menu
        vterm
        vterm-toggle
      ];

    overrides = _: _: {
      specstrom-mode = import ./specstrom-mode.nix { inherit pkgs; };
    };
  };

  home.packages = with pkgs; [
    libvterm
    python-language-server
  ];

  home.file.".emacs.d" = {
    source = ./emacs;
    recursive = true;
  };
}
