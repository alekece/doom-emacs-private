;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+private" doom-private-dir t)
(load! "+bindings.el" doom-private-dir)

(setq display-line-numbers-type t
      company-idle-delay nil
      flyspell-delay nil

      ;; Make any search case insensitive
      case-fold-search t

      ;; lsp-ui-sideline is redundant with eldoc and much more invasive, so
      ;; disable it by default.
      lsp-ui-sideline-enable nil

      ;; Enable avy search for all windows
      avy-all-windows t

      ;; Silence all that useless output
      direnv-always-show-summary nil

      ;; Switch to the new window after splitting
      evil-split-window-below t
      evil-vsplit-window-right t

      ;; Don't restore the wconf after quitting magit, it's jarring
      magit-save-repository-buffers nil
      magit-inhibit-save-previous-winconf t)


;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; I prefer search matching to be ordered; it's more precise
(add-to-list 'ivy-re-builders-alist '(counsel-projectile-find-file . ivy--regex-plus))

;; Sort tabs in order to ease navigation
(after! tabs
  (centaur-tabs-enable-buffer-reordering))

(after! rustic
  (setq rustic-lsp-server 'rust-analyzer))
