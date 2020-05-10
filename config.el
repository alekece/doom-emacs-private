;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+private" doom-private-dir t)
(load! "+format" doom-private-dir)

;;
;;; Settings
(setq display-line-numbers-type nil
      company-idle-delay nil
      flyspell-delay nil

      ;; lsp-ui-sideline is redundant with eldoc and much more invasive, so
      ;; siable it by default.
      lsp-ui-sideline-enable nil
      lsp-enable-symbol-highlighting nil

      ;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
      ;; are the three important ones:
      ;;
      ;; + `doom-font'
      ;; + `doom-variable-pitch-font'
      ;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
      ;;   presentations or streaming.
      ;;
      ;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
      ;; font string.
      doom-font (font-spec :family "DejaVu Sans Mono" :size 14)
      doom-big-font (font-spec :family "DejaVu Sans Mono" :size 20)

      ;; There are two ways to load a theme. Both assume the theme is installed and
      ;; available. You can either set `doom-theme' or manually load a theme with the
      ;; `load-theme' function.
      doom-theme 'doom-dracula

      ;; Enable avy search for all windows
      avy-all-windows t

      ;; Silence all that useless output
      direnv-always-show-summary nil

      ;; Don't restore the wconf after quitting magit, it's jarring
      magit-save-repository-buffers nil
      magit-inhibit-save-previous-winconf t

      ;; Replace the "DOOM" image.
      fancy-splash-image (concat doom-private-dir "splash.png"))

;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; I prefer search matching to be ordered; it's more precise
(add-to-list 'ivy-re-builders-alist '(counsel-projectile-find-file . ivy--regex-plus))


;;
;;; Modules
(use-package! imenu-list
  :commands imenu-list-smart-toggle
  :config
  (set-popup-rule! "^\\*Ilist"
    :side 'left :size 35 :quit nil :select t :ttl 0)
  :init
  (map! :leader :desc "imenu" "oi"
        (lambda()
          (interactive)
          ;; fix conflicts with treemacs pop-up
          (if (featurep! :ui treemacs)
              (pcase (treemacs-current-visibility)
                ('visible (delete-window (treemacs-get-local-window)))))
          (imenu-list-smart-toggle))))

(after! evil
  ;; Switch to the new window after splitting
  (setq evil-split-window-below t
        evil-vsplit-window-right t)
  (map! :n "M-r" #'evil-multiedit-match-all
        ;; Avoid to strike repeatedly the leader key
        :n "w" evil-window-map))
