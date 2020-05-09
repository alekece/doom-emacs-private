;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+private" doom-private-dir t)
(load! "+format" doom-private-dir)

;;
;;; Settings
(setq
 ;; This determines the style of line numbers in effect. If set to `nil', line
 ;; numbers are disabled. For relative line numbers, set this to `relative'.
 display-line-numbers-type nil

 ;; IMO, modern editors have trained a bad habit into us all: a burning
 ;; need for completion all the time -- as we type, as we breathe, as we
 ;; pray to the ancient ones -- but how often do you *really* need that
 ;; information? I say rarely. So opt for manual completion:
 company-idle-delay nil

 ;; The spell checking is quite intrusive and should be activate on purpose
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

 ;; Switch to the new window after splitting
 evil-split-window-below t
 evil-vsplit-window-right t

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
    :side 'right :size 35 :quit nil :select t :ttl 0)
  :init
  (map! :leader
        :desc "imenu" "oi"
        (lambda ()
          (interactive)
          (if (bound-and-true-p lsp-mode)
              (lsp-ui-imenu)
            (imenu-list-smart-toggle))))
  :bind ([remap imenu-list-goto-entry] . imenu-list-display-entry))

;;
;;; Keybinds
(map! :after evil
      :n "M-r" #'evil-multiedit-match-all
      ;; Avoid to strike repeatedly the leader key
      :n "w" evil-window-map)
