;;; tools/import/config.el -*- lexical-binding: t; -*-

(use-package! cpp-auto-include
  :commands cpp-auto-include
  :init
  (map!
   :after cc-mode
   :map (c-mode-map c++-mode-map)
   :leader
   :desc "Include headers" "ci" #'cpp-auto-include))
