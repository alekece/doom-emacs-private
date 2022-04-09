;;; lang/just/config.el -*- lexical-binding: t; -*-

(use-package! just-mode
  :defer t
  :mode (("^\\.?/justfile$" . just-mode)))
