;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+private" doom-private-dir t)
(load! "+format" doom-private-dir)
(load! "+tabs" doom-private-dir)
(load! "+cc" doom-private-dir)
(load! "+rust" doom-private-dir)
(load! "+bindings.el" doom-private-dir)

(setq display-line-numbers-type nil
      company-idle-delay nil
      flyspell-delay nil

      ;; Make any search case insensitive
      case-fold-search t

      ;; lsp-ui-sideline is redundant with eldoc and much more invasive, so
      ;; disable it by default.
      lsp-ui-sideline-enable nil

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

      ;; Switch to the new window after splitting
      evil-split-window-below t
      evil-vsplit-window-right t

      ;; Don't restore the wconf after quitting magit, it's jarring
      magit-save-repository-buffers nil
      magit-inhibit-save-previous-winconf t

      ;; Replace the "DOOM" image.
      fancy-splash-image (concat doom-private-dir "splash.png"))

;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; I prefer search matching to be ordered; it's more precise
(add-to-list 'ivy-re-builders-alist '(counsel-projectile-find-file . ivy--regex-plus))
