;;; lang/yaml/config.el -*- lexical-binding: t; -*-

(use-package! yaml-mode
  :defer t
  :mode (("\\.yml\\'" . yaml-mode)
         ("\\.yaml\\'" . yaml-mode)))
