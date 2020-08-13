;;; ~/dev/doom-emacs-private/+bindings.el -*- lexical-binding: t; -*-

(map! :n "M-r" #'evil-multiedit-match-all
      ;; Avoid to strike repeatedly the leader key
      :n "w" evil-window-map
      :leader
      :desc "imenu" "oi" #'imenu-list-toggle)

(use-package! treemacs
  :config (define-key! evil-treemacs-state-map "w" evil-window-map))
