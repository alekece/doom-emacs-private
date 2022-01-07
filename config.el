;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(load! "+private" doom-private-dir t)
(load! "+bindings.el" doom-private-dir)

(setq-default fill-column 100)

(setq
 ;; Make any search case insensitive
 case-fold-search t

 ;; Enable `avy' search for all windows
 avy-all-windows t

 ;; Silence all that useless output
 direnv-always-show-summary nil
 display-line-numbers-type nil
 company-idle-delay nil
 flyspell-delay nil

 ;; Switch to the new window after splitting
 evil-split-window-below t
 evil-vsplit-window-right t

 ;; Don't restore the wconf after quitting magit, it's jarring
 magit-save-repository-buffers nil
 magit-inhibit-save-previous-winconf t

 ;; `lsp-ui-sideline' is redundant with eldoc and much more invasive, so
 ;; disable it by default
 lsp-ui-sideline-enable nil
 lsp-ui-doc-enable nil
 lsp-lens-enable nil
 lsp-ui-imenu-auto-refresh t

 ;; Inlay hints are useful but not all the time
 lsp-rust-analyzer-server-display-inlay-hints nil
 lsp-rust-analyzer-display-parameter-hints t
 lsp-rust-analyzer-display-chaining-hints t

 ;; Use `clippy' as default watcher
 lsp-rust-analyzer-cargo-watch-command "clippy"

 ;; Fix false positive `clippy' warnings
 lsp-rust-analyzer-diagnostics-enable-experimental nil
 lsp-rust-analyzer-diagnostics-disabled ["unresolved-import", "inactive-code"]
 lsp-rust-analyzer-proc-macro-enable t

 ;; Collapse this many directories into one, when possible.
 ;; A directory is collapsible when its content consists of nothing but another directory.
 treemacs-collapse-dirs 5
 treemacs-width 50

 ;; Tweak `doom' appearance
 fancy-splash-image (concat doom-private-dir "splash.png")
 doom-font (font-spec :family "DejaVu Sans Mono" :size 14)
 doom-big-font (font-spec :family "DejaVu Sans Mono" :size 20)
 doom-theme 'doom-vibrant)

;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
