;; -*- no-byte-compile: t; -*-
;;; tools/import/packages.el

(if (featurep! :lang cc)
    (package! cpp-auto-include))
