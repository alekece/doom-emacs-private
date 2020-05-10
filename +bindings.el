;;; ~/dev/doom-emacs-private/+bindings.el -*- lexical-binding: t; -*-

(map! :n "M-r" #'evil-multiedit-match-all
      ;; Avoid to strike repeatedly the leader key
      :n "w" evil-window-map
      :leader
      :desc "imenu" "oi" #'imenu-list-toggle)
