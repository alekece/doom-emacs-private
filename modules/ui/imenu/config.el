;;; ui/imenu/config.el -*- lexical-binding: t; -*-

(use-package! imenu-list
  :commands imenu-list-smart-toggle
  :config
  (set-popup-rule! "^\\*Ilist"
    :side 'left :size 50 :quit nil :select t :ttl 0)
  (when (featurep! +auto)
    (define-key! imenu-list-major-mode-map
      [return]
      (defun imenu-list-close-and-goto-entry()
        (interactive)
        (imenu-list-goto-entry)
        (imenu-list-smart-toggle)))))

(after! imenu
  (map!
   :leader
   :desc "imenu" "oi" #'imenu-list-toggle))
