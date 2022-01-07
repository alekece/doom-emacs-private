;;; ~/.doom.d/+private.example.el -*- lexical-binding: t; -*-
;;; Place host specific configuration here

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "your name"
      user-mail-address "your mail")

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/path/to/org"
      org-agenda-files '("/path/to/agenda.org"))

;; If you use `projectile' and don't want your projects in the default location below,
;; change `project-project-search-path'. It must be set before projectile loads!
(setq projectile-project-search-path '("path/to/project"))
