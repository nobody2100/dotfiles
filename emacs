;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; My Personal emacs configuration 
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; programming 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; C-F11 to compile
(global-set-key [(control f11)] 'compile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; random emacs settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'font-lock) ;; Enable syntax highlighning
(setq-default indent-tabs-mode nil) ;; Prevent Extraneous Tabs
(setq line-number-mode t) ;; display line numbers
(setq column-number-mode t) ;; display column numbers
; display line numbers in margin (fringe). Emacs 23 only.
;(global-linum-mode t) ;; always show line numbers
(transient-mark-mode t) ;; highlight text selection
(delete-selection-mode t) ;; delete seleted text when typing
(show-paren-mode t) ;; turn on paren match highlighting
; soft wrap words on line breaks
(global-visual-line-mode 1) ;; 1 for on, 0 for off.
(setq x-select-enable-clipboard t) ;; solves problem pasting between emacs and other programs

(setq inhibit-startup-message t)   ;; Don't want any startup message 
(setq inhibit-splash-screen t) ;; no splash screen either



(iswitchb-mode 1) ;; switch buffer and list of option is reduced as we type
(setq iswitchb-buffer-ignore '("*")) ;; no need to lsit buffer that contain a *

(savehist-mode 1) ;; better save history
(setq history-length t) ;; no max length for minibuffer history; store it all
(setq history-delete-duplicates t)

(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(setq isearch-allow-scroll t)
(setq isearch-case-fold-search t)

; regard words in camelCase as separate words
;(setq subword-mode t) ;; 1 for on, 0 for off


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; backup and auto-save files 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(setq auto-save-list-file-name nil) ;; Don't want any .saves files 
;(setq auto-save-default nil) ;; Don't want any auto saving 

;(setq make-backup-files nil) ;; Don't want any backup files 
(setq make-backup-files t) ;; Want backup files 

; return a backup file path of a give file path
; with full directory mirroring from a root dir
; non-existant dir will be created
; (defun my-backup-file-name (fpath)
;   "Return a new file path of a given file path.
; If the new path's directories does not exist, create them."
;   (let (backup-root bpath)
;     (setq backup-root "~/.emacs.d/emacs-backup")
;     (setq bpath (concat backup-root fpath "~"))
;     (make-directory (file-name-directory bpath) bpath)
;     bpath
;   )
; )
; (setq make-backup-file-name-function 'my-backup-file-name)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mathematica mode (mma-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'mma-mode "~/local/dotfiles/mma.el" "Mathematica package file mode" t)
(setq auto-mode-alist
      (cons '("\\.m\\'" . mma-mode) auto-mode-alist))