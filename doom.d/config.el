;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Richard Baptist"
      user-mail-address "code@richardbaptist.nl")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.

(setq doom-font (font-spec :family "Source Code Pro" :size 14))

;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'gruvbox-dark-hard)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(define-key projectile-mode-map (kbd "C-p") 'projectile-command-map)
(setq projectile-project-search-path '("~/code/" "~/.dotfiles" "~/.ansible"))

;; Keybinds section

(setq doom-leader-alt-key "C-c"
      doom-localleader-alt-key "C-c l")

(setq kill-whole-line t)
(setq confirm-kill-emacs nil)
(setq auto-save-default t
      make-backup-files t)

(global-unset-key (kbd "C-b"))
(global-unset-key (kbd "C-f"))
(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "C-p"))
(global-unset-key (kbd "M-b"))
(global-unset-key (kbd "M-f"))
(global-unset-key (kbd "M-n"))
(global-unset-key (kbd "M-p"))

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-v"))

(global-unset-key (kbd "C-w"))

(global-unset-key (kbd "C-SPC"))

(global-set-key (kbd "C-z") 'undo-fu-only-undo) ;; undo
(global-set-key (kbd "C-v") 'yank) ;; paste
(global-set-key (kbd "M-v") 'counsel-yank-pop) ;; yank history

(global-set-key (kbd "C-y") 'undo-fu-only-redo) ;; undo

(global-set-key (kbd "C-b") 'kill-ring-save) ;; copy
(global-set-key (kbd "M-b") 'kill-region) ;; cut

; (global-set-key (kbd "C-S-s") 'query-replace)
(global-set-key (kbd "C-w") 'tab-close)

;;
(global-set-key (kbd "C-p C-f") 'counsel-projectile-rg)

;; Windmove
(global-set-key (kbd "C-SPC n") 'windmove-left)
(global-set-key (kbd "C-SPC i") 'windmove-right)
(global-set-key (kbd "C-SPC u") 'windmove-up)
(global-set-key (kbd "C-SPC e") 'windmove-down)

(global-set-key (kbd "C-SPC M-n") 'windmove-swap-states-left)
(global-set-key (kbd "C-SPC M-i") 'windmove-swap-states-right)
(global-set-key (kbd "C-SPC M-u") 'windmove-swap-states-up)
(global-set-key (kbd "C-SPC M-e") 'windmove-swap-states-down)

(global-set-key (kbd "C-SPC f n") 'windmove-display-left)
(global-set-key (kbd "C-SPC f i") 'windmove-display-right)
(global-set-key (kbd "C-SPC f u") 'windmove-display-up)
(global-set-key (kbd "C-SPC f e") 'windmove-display-down)

(global-set-key (kbd "C-SPC d n") 'windmove-delete-left)
(global-set-key (kbd "C-SPC d i") 'windmove-delete-right)
(global-set-key (kbd "C-SPC d u") 'windmove-delete-up)
(global-set-key (kbd "C-SPC d e") 'windmove-delete-down)

(global-set-key (kbd "C-<tab>") 'tab-next)
(global-set-key (kbd "C-S-<iso-lefttab>") 'tab-previous)

; ;; magit

; (global-set-key (kbd "C-c g")  'magit-status)
