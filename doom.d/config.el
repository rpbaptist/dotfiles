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

(setq doom-leader-alt-key "C-c"
      doom-localleader-alt-key "C-c l")

(setq kill-whole-line t)
(setq confirm-kill-emacs nil)
(setq auto-save-default t
      make-backup-files t)

;; Available keybinds
;; From navigation
;; C-n
;; C-p
;; C-b
;; C-f
;;
;; M-n
;; M-p
;; M-b
;; M-f
;;
;; C-v ;; yank
;; M-v
;;
;; C-a
;; C-e

;; C-SPC

;; Available due to being freed up
;; C-_ undo
;; C-x u undo
;; C-/ undo

;;(keyboard-translate ?\C-c ?\C-n)
;; (keyboard-translate ?\C-n ?\C-c)

;; Available from DEL key
;; C-d - DEL
;; M-d - CTRL+DEL

;; Available because it sucks
;; C-z suspend frame

;; PgDn is easy
(global-set-key (kbd "C-v") 'yank) ;; paste
;; Minimize? Who cares?
;; (global-set-key (kbd "C-/") 'undo-fu-only-undo) ;; undo
;; Since I already have undo, we now also have redo
(global-set-key (kbd "C-?") 'undo-fu-only-redo) ;; undo

(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "C-SPC C-n")  'windmove-left)
(global-set-key (kbd "C-SPC C-i") 'windmove-right)
(global-set-key (kbd "C-SPC C-u")    'windmove-up)
(global-set-key (kbd "C-SPC C-e")  'windmove-down)
