;;; ~/dev/doom-emacs-private/+rust.el -*- lexical-binding: t; -*-

(after! rustic
  (setq rustic-lsp-server 'rust-analyzer
        rustic-format-on-save t))
