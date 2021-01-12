;;; ~/dev/doom-emacs-private/+bindings.el -*- lexical-binding: t; -*-

(map! :n "M-r" #'evil-multiedit-match-all
      ;; Avoid to strike repeatedly the leader key
      :n "w" evil-window-map
      :leader
      :after lsp-mode
      :desc "Inlay hints" "t i" #'lsp-rust-analyzer-inlay-hints-mode)

(map! :map (magit-mode-map magit-diff-mode-map)
      :n "w" evil-window-map)

(map! :map evil-window-map
      :desc "Kill other windows" "O" #'delete-other-windows)

(after! treemacs
  :config (define-key! evil-treemacs-state-map "w" evil-window-map))
