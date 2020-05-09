;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

(if (featurep! :tools format)
    (package! clang-format))

(package! imenu-list)
