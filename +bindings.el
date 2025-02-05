;;; ~/dev/doom-emacs-private/+bindings.el -*- lexical-binding: t; -*-

(map! :n "M-r" #'evil-multiedit-match-all)

(map! :map evil-window-map
      :desc "Kill other windows" "O" #'delete-other-windows)

(map! :map (magit-mode-map magit-diff-mode-map)
      ;; :n "w" evil-window-map
      :n "g r" 'magit-refresh
      :n "g R" 'magit-refresh-all
      :n "<tab>" 'magit-section-toggle)

(map! :map rustic-mode-map
      :leader
      :desc "Inlay hints" "ch" #'lsp-inlay-hints-mode)

(after! lsp-ui
  (map!
   :leader
   :desc "imenu" "oi" #'lsp-ui-imenu))

(after! copilot
  (map!
   :leader
   :desc "Copilot" "ta" #'copilot-mode
   ))

(use-package! drag-stuff
  :defer t
  :init
  (map! "<M-up>"    #'drag-stuff-up
        "<M-down>"  #'drag-stuff-down
        "<M-left>"  #'drag-stuff-left
        "<M-right>" #'drag-stuff-right))
