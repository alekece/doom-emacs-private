;;; ~/dev/doom-emacs-private/+bindings.el -*- lexical-binding: t; -*-

(map! :n "M-r" #'evil-multiedit-match-all
      ;; Avoid to strike repeatedly the leader key
      :n "w" evil-window-map)

(map! :map evil-window-map
      :desc "Kill other windows" "O" #'delete-other-windows)

(map! :map (magit-mode-map magit-diff-mode-map)
      :n "w" evil-window-map
      :n "g r" 'magit-refresh
      :n "g R" 'magit-refresh-all
      :n "<tab>" 'magit-section-toggle)

(map! :map rustic-mode-map
      :leader
      :desc "Inlay hints" "ch" #'lsp-rust-analyzer-inlay-hints-mode)

(after! treemacs
  :config
  (define-key! evil-treemacs-state-map "w" evil-window-map)
  (define-key! evil-treemacs-state-map "M-w" 'treemacs-set-width))

(after! lsp-ui
  (map!
   :leader
   :desc "imenu" "oi" #'lsp-ui-imenu))
