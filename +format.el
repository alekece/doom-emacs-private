;;; ~/.doom.d/+format.el -*- lexical-binding: t; -*-

(use-package! clang-format
  :commands clang-format-buffer
  :init
  (map!
   :after cc-mode
   :map (c-mode-map c++-mode-map)
   :leader
   :desc "Format buffer" "cf" #'clang-format-buffer))

(when (featurep! +onsave)
  (add-hook! '(c-mode-hook c++-mode-hook)
    (defun clang-format-buffer-on-save()
      (add-hook! 'before-save-hook :local 'clang-format-buffer))))
